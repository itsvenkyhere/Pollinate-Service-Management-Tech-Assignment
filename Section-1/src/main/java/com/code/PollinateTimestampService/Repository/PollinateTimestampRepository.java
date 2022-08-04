package com.code.PollinateTimestampService.Repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import com.code.PollinateTimestampService.Entity.PollinateTimestampEntity;

public interface PollinateTimestampRepository extends MongoRepository<PollinateTimestampEntity, Long>{

}