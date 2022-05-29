package cn.crudapi.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@ComponentScan({"cn.crudapi", "cn.crudapi.example"})
@ServletComponentScan(basePackages = {"cn.crudapi"}) 
@EntityScan("cn.crudapi.core.entity")
@EnableTransactionManagement
@EnableAsync
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class CrudapiExampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(CrudapiExampleApplication.class, args);
	}

}
