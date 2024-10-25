package com.eazybytes.gatewayserver.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import static java.lang.Thread.sleep;

@RestController
public class FallbackController {

    @RequestMapping("/contactSupport")
    public Mono<ResponseEntity<String>> fallbackMethod() throws InterruptedException {
        return  Mono.just(ResponseEntity.status(500).body("Try again!!!"));
    }

}
