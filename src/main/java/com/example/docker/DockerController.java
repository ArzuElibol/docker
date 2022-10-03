package com.example.docker;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/Hello")
public class DockerController {

        
@RequestMapping("/")
    public String HelloWorld(){
return "HellöööWorld";

    }
    
}
