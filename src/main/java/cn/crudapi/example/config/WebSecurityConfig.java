package cn.crudapi.example.config;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import cn.crudapi.core.constant.ApiErrorCode;
import cn.crudapi.core.error.ApiError;
import cn.crudapi.core.util.JsonUtils;

import org.springframework.security.web.authentication.AuthenticationFailureHandler;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	public void configure(WebSecurity web) throws Exception {
		web.ignoring()
		.antMatchers("/**/css/**", "/**/js/**", "/**/fonts/**", "/**/statics/**");
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
	        .httpBasic()
	    .and()
	        .csrf().disable();
    }
}
