package com.kobylinski.dotacje.repo;

import com.kobylinski.dotacje.model.Farmer;
import com.kobylinski.dotacje.model.Grant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;



@Repository
public interface GrantRepo extends JpaRepository<Grant,Long> {
    Optional<List<Grant>> findGrantByFarmer(Farmer farmer);
}
