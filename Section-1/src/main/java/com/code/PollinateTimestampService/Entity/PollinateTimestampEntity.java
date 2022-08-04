package com.code.PollinateTimestampService.Entity;

import org.springframework.context.annotation.Bean;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="DateTimestamp")
public class PollinateTimestampEntity {

    private String dateTimeStamp;

    public String getDateTimeStamp() {
        return dateTimeStamp;
    }

    public void setDateTimeStamp(String dateTimeStamp) {
        this.dateTimeStamp = dateTimeStamp;
    }



}
