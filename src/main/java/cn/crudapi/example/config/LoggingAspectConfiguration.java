package cn.crudapi.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration
@EnableAspectJAutoProxy
public class LoggingAspectConfiguration {
	@Bean
	public LoggingAspect loggingAspect() {
		return new LoggingAspect();
	}
}
