package cn.crudapi.example.config;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.server.ConfigurableWebServerFactory;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;

@Configuration
public class WebConfig {
	private static final Logger log = LoggerFactory.getLogger(WebConfig.class);
	
	@Bean
    public WebServerFactoryCustomizer<ConfigurableWebServerFactory> webServerFactoryCustomizer(){
		log.info("webServerFactoryCustomizer");
		return factory -> {
            ErrorPage error404Page = new ErrorPage(HttpStatus.NOT_FOUND, "/crudapi/index.html");
            factory.addErrorPages(error404Page);
        };
    }
}