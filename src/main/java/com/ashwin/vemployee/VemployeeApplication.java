package com.ashwin.vemployee;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.http.CacheControl;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.concurrent.TimeUnit;

@SpringBootApplication
		/*(exclude = {DataSourceAutoConfiguration.class })*/
public class VemployeeApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(VemployeeApplication.class, args);
	}


	private static Logger logger = LoggerFactory.getLogger(VemployeeApplication.class.getName());

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {

        // Register resource handler for images
        registry.addResourceHandler("/images/**").addResourceLocations("/WEB-INF/images/")
                .setCacheControl(CacheControl.maxAge(2, TimeUnit.HOURS).cachePublic());
	}
}
