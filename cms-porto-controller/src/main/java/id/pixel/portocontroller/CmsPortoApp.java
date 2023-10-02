package id.pixel.portocontroller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"id.pixel"})
public class CmsPortoApp {
    public static void main(String[] args) {
        SpringApplication.run(CmsPortoApp.class, args);
    }
}
