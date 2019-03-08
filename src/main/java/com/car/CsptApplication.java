package com.car;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan(value = "com.car.admin.config")
public class CsptApplication {

    public static void main(String[] args) {
        SpringApplication.run(CsptApplication.class, args);
    }

}
