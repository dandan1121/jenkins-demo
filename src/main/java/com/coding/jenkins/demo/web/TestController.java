package com.coding.jenkins.demo.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * description
 *
 * @Title: TestController
 * @Author Xu.d.d
 * @Date 2025/4/27 18:40
 */
@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping
    public String test() {
        return "Hello World...";
    }

}
