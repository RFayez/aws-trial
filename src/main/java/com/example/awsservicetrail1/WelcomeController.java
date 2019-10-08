package com.example.awsservicetrail1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WelcomeController {


    @GetMapping("/welcome")
    public String getHelloMessage(){
        return "Welcome from Springboot Application";
    }
}
