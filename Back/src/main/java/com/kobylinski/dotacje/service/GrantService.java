package com.kobylinski.dotacje.service;

import com.kobylinski.dotacje.exceptions.GrantNotFoundException;
import com.kobylinski.dotacje.model.Farmer;
import com.kobylinski.dotacje.model.Grant;
import com.kobylinski.dotacje.repo.GrantRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class GrantService {
    GrantRepo grantRepo;

    @Autowired
    public GrantService(GrantRepo gr) {
        grantRepo = gr;
    }

    public Grant addGrant(Grant grant) {
        return grantRepo.save(grant);
    }

    public List<Grant> findAllGrants() {
        return grantRepo
                .findAll()
                .stream()
                .distinct()
                .collect(Collectors.toList());
    }


    public Grant updateGrant(Grant grant) {

        return grantRepo.save(grant);
    }
    public List<Grant> addAllGrants(List<Grant> grants){

        return grantRepo.saveAll(grants);
    }

    public Grant findById(Long id) {
        return grantRepo.findById(id).orElseThrow(
                () -> new GrantNotFoundException("Brak informacji o tego typu pomocy"));
    }

    public List<Grant> findGrantByFarmer(Farmer farmer) {
        return grantRepo.findGrantByFarmer(farmer).
                orElseThrow(() -> new GrantNotFoundException(
                "Dotacja dla tej grupy beneficjentów nie znaleziona"
        ));
    }

    public ResponseEntity<?> deleteGrant(Long id) {
        grantRepo.deleteById(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
