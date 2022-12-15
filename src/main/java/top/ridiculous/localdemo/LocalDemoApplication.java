package top.ridiculous.localdemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication
@MapperScan(value = {"top.ridiculous.localdemo.*"})
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
public class LocalDemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(LocalDemoApplication.class, args);
    }

}
