package com.kobylinski.dotacje.repo;

import com.kobylinski.dotacje.model.Farmer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FarmerRepo extends JpaRepository<Farmer,Long> {
}
