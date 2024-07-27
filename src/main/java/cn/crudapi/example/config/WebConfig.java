package cn.crudapi.example.config;


import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;

@Configuration
public class WebConfig {
	private static final Logger log = LoggerFactory.getLogger(WebConfig.class);
	
	@Value("${crudapi.publicPath}")
	private String publicPath;
	
	@Bean
    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryCustomizer(){
		log.info("webServerFactoryCustomizer");
		
		if (StringUtils.isEmpty(publicPath)) {
			publicPath = "crudapi";
		}
		
		String crudapiHomePage = "/" + publicPath +  "/index.html";
		
		log.info("crudapiHomePage {}", crudapiHomePage);
		
		return factory -> {
            ErrorPage error404Page = new ErrorPage(HttpStatus.NOT_FOUND, crudapiHomePage);
            factory.addErrorPages(error404Page);
        };
    }
}