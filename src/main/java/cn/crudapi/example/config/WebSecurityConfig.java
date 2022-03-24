package cn.crudapi.example.config;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.security.web.session.SessionInformationExpiredEvent;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import cn.crudapi.core.constant.ApiErrorCode;
import cn.crudapi.core.error.ApiError;
import cn.crudapi.core.util.JsonUtils;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	public void configure(WebSecurity web) throws Exception {
		web.ignoring()
		.antMatchers("/**/css/**", 
				"/**/js/**", 
				"/**/fonts/**", 
				"/**/statics/**",
				"/**/crudapi", 
				"/**/crudapi/", 
				"/**/crudapi/**", 
				"/**/download/**",
				"/swagger",
				"/swagger-ui.html",
				"/swagger-ui.html/**",
				"/**/springfox-swagger-ui/**",
				"/**/swagger-resources/**",
				"/**/api-docs/**");
	}
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/api/auth/logout").permitAll()
		.antMatchers("/api/**").hasRole("SUPER_ADMIN")
		.anyRequest().authenticated()
		.and()
	        .formLogin()
	        .loginProcessingUrl("/api/auth/login")
	        .successHandler(new AuthenticationSuccessHandler() {
				@Override
				public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
						Authentication authentication) throws IOException, ServletException {
					response.setContentType("application/json;charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.write(JsonUtils.toJson(authentication));
				}
	        })
	        .failureHandler(new AuthenticationFailureHandler() {
				@Override
				public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
						AuthenticationException exception) throws IOException, ServletException {
					response.setContentType("application/json;charset=utf-8");
					response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
					
					ApiError apiError = new ApiError(exception.getMessage(), ApiErrorCode.AUTH_ERROR, "登录失败, " + exception.getMessage());
					PrintWriter out = response.getWriter();
					out.write(JsonUtils.toJson(apiError));
				}
	        })
	        .permitAll()
        .and()
	        .logout()
	        .logoutUrl("/api/auth/logout")
	        .logoutSuccessHandler(new LogoutSuccessHandler() {
				@Override
				public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
						Authentication authentication) throws IOException, ServletException {
					response.setContentType("application/json;charset=UTF-8");
					PrintWriter out = null;
					try {
						out = response.getWriter();
					} catch (IOException e) {
						e.printStackTrace();
					}
					out.write(JsonUtils.toJson(authentication));
				}
	        })
	    .and()
	    	.sessionManagement()
	    	.invalidSessionStrategy(new InvalidSessionStrategy() {
				@Override
				public void onInvalidSessionDetected(HttpServletRequest request, HttpServletResponse response)
						throws IOException, ServletException {
					response.setContentType("application/json;charset=utf-8");
					response.setStatus(HttpStatus.UNAUTHORIZED.value());
					
					ApiError apiError = new ApiError("InvalidSession", ApiErrorCode.AUTH_UNAUTHORIZED, "会话无效");
					PrintWriter out = response.getWriter();
					out.write(JsonUtils.toJson(apiError));
				}
	    	}) 
	    	.maximumSessions(9999).maxSessionsPreventsLogin(false)
	        .expiredSessionStrategy(new SessionInformationExpiredStrategy() {
				@Override
				public void onExpiredSessionDetected(SessionInformationExpiredEvent event)
						throws IOException, ServletException {
					HttpServletResponse response = event.getResponse();
		    		
		    		response.setContentType("application/json;charset=utf-8");
		    		response.setStatus(HttpStatus.UNAUTHORIZED.value());
		    		
		    		ApiError apiError = new ApiError("ExpiredSession", ApiErrorCode.AUTH_UNAUTHORIZED, "会话过期");
		    		PrintWriter out = response.getWriter();
		    		out.write(JsonUtils.toJson(apiError));
				}
	        })
	        .and()
        .and()
	        .httpBasic()
	    .and()
	        .csrf().disable()
	        .exceptionHandling()
        	.authenticationEntryPoint(new AuthenticationEntryPoint() {
				@Override
				public void commence(HttpServletRequest request, HttpServletResponse response,
						AuthenticationException authException) throws IOException, ServletException {
					response.setHeader("Access-Control-Allow-Origin", "*");
			        response.setHeader("Cache-Control","no-cache");
			        response.setCharacterEncoding("UTF-8");
			        response.setContentType("application/json");
					response.setStatus(HttpStatus.UNAUTHORIZED.value());
					
					ApiError apiError = new ApiError(authException.getMessage(), ApiErrorCode.AUTH_UNAUTHORIZED, "未登陆");
					PrintWriter out = response.getWriter();
					out.write(JsonUtils.toJson(apiError));
				}
        	})
        	.accessDeniedHandler(new AccessDeniedHandler() {
				@Override
				public void handle(HttpServletRequest request, HttpServletResponse response,
						AccessDeniedException accessDeniedException) throws IOException, ServletException {
					response.setHeader("Access-Control-Allow-Origin", "*");
			        response.setHeader("Cache-Control","no-cache");
			        response.setCharacterEncoding("UTF-8");
			        response.setContentType("application/json");
					response.setStatus(HttpStatus.FORBIDDEN.value());
					
					ApiError apiError = new ApiError(accessDeniedException.getMessage(), ApiErrorCode.AUTH_FORBIDDEN, "没有权限");
					PrintWriter out = response.getWriter();
					out.write(JsonUtils.toJson(apiError));
				}
        	});
    }
}
