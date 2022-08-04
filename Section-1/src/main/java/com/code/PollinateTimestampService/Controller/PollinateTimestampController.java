package com.code.PollinateTimestampService.Controller;

import com.code.PollinateTimestampService.Entity.PollinateTimestampEntity;
import com.code.PollinateTimestampService.Repository.PollinateTimestampRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;

@RestController
public class PollinateTimestampController {

    @Autowired
    private PollinateTimestampRepository repository;

    @PostMapping("/app")
    public String saveDateTimeStamp(){
        Instant dateTimeStamp =  Instant.now();

        PollinateTimestampEntity entity = new PollinateTimestampEntity();
        entity.setDateTimeStamp(dateTimeStamp.toString());
        repository.save(entity);

        return "Current DateTimestamp added successfully: " + dateTimeStamp;

    }

    @GetMapping("/test")
    public String test(){
        return "Application is up";

    }

}
