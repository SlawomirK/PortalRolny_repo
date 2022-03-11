package com.kobylinski.dotacje.service;

import com.kobylinski.dotacje.model.Farmer;
import com.kobylinski.dotacje.repo.FarmerRepo;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FarmerService {
    FarmerRepo farmerRepo;

    public FarmerService(FarmerRepo farmerRepo){
        this.farmerRepo=farmerRepo;
    }
    public Farmer addFarmer(Farmer farmer){
        return farmerRepo.save(farmer);
    }
    public List<Farmer> findAllFarmers(){
        return farmerRepo.findAll();
    }
    public Farmer updateFarmer(Farmer farmer){
        return farmerRepo.save(farmer);
    }
    public List<Farmer> addAllGrant(List<Farmer> farmers){
        return farmerRepo.saveAll(farmers);
    }
    public ResponseEntity<?> deleteFarmer(Long id){
        farmerRepo.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
