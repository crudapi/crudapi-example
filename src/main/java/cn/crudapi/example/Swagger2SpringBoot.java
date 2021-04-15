package cn.crudapi.example;

import com.google.common.base.Predicate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import static springfox.documentation.builders.PathSelectors.*;

@Configuration
@EnableSwagger2
public class Swagger2SpringBoot {
    @Bean
    public Docket caMetadataApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("元数据")
                .apiInfo(apiInfo())
                .select()
                .paths(caMetadataPaths())
                .build();
    }

    @Bean
    public Docket caBusinessApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("业务数据")
                .apiInfo(apiInfo())
                .select()
                .paths(caBusinessPaths())
                .build();
    }
    
    @Bean
    public Docket fileApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .groupName("文件管理")
                .apiInfo(apiInfo())
                .select()
                .paths(filePaths())
                .build();
    }
    
    private Predicate<String> caMetadataPaths() {
        return regex("/api/metadata.*");
    }

    private Predicate<String> caBusinessPaths() {
        return regex("/api/business.*");
    }
    
    private Predicate<String> filePaths() {
        return regex("/api/file.*");
    }
    
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("CRUDAPI API")
                .description("crudapi openapi.")
                .termsOfServiceUrl("https://crudapi.cn")
                .contact(new Contact("crudapi", "https://crudapi.cn", "admin@crudapi.cn"))
                .version("1.0.0")
                .build();
    }
}