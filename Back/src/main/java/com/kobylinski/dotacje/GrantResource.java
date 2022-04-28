package com.kobylinski.dotacje;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kobylinski.dotacje.model.Farmer;
import com.kobylinski.dotacje.model.Grant;
import com.kobylinski.dotacje.service.GrantService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/grants")
public class GrantResource {
    private final GrantService grantService;

    public GrantResource(GrantService grantService) {
        this.grantService = grantService;
    }

    @CrossOrigin(origins = "http://localhost:4200/grants/all")
    @GetMapping("/all")
    public ResponseEntity<List<Grant>> getAllGrants() {
        List<Grant> grants = grantService.findAllGrants();
        return new ResponseEntity<>(grants, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Grant> getGrantById(@PathVariable Long id) {
        Grant grant = grantService.findById(id);
        return new ResponseEntity<>(grant, HttpStatus.OK);
    }

    @GetMapping("/find/farmer")
    public ResponseEntity<?>
    getGrantByFarmer(@RequestParam Map<String, String> dataQuery) throws JsonProcessingException {
        Farmer farmer = new Farmer(
                Integer.parseInt(dataQuery.get("age")),
                dataQuery.get("area"),
                Boolean.parseBoolean(dataQuery.get("inKRUS")),
                Boolean.parseBoolean(dataQuery.get("agricultureIncome")),
                dataQuery.get("mainAnimal"),
                Integer.parseInt(dataQuery.get("herdSize")),
                Set.of(dataQuery.get("crops")),
                Boolean.parseBoolean(dataQuery.get("hasForest")),
                Boolean.parseBoolean(dataQuery.get("hasKids")),
                Boolean.parseBoolean(dataQuery.get("wantComitments")));
        //przemyśleć czy nie zastosować wzorca budowniczy może ułatwić późniejsze wyszukiwanie

        Optional<Grant> grants = grantService.findGrantByFarmer(farmer);
        System.out.println(farmer.toString());
        return new ResponseEntity<>(grants, HttpStatus.OK);
    }

    @PostMapping("/addAll")
    public ResponseEntity<List<Grant>> addAll(@RequestBody List<Grant> grant) {
        List<Grant> grants = grantService.addAllGrants(grant);
        return new ResponseEntity<>(grants, HttpStatus.CREATED);
    }

    @PostMapping("/add")
    public ResponseEntity<Grant> addGrant(@RequestBody Grant grant) {
        Grant grant1 = grantService.addGrant(grant);
        return new ResponseEntity<>(grant1, HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Grant> updateGrant(@RequestBody Grant grant) {
        Grant updateGrant = grantService.updateGrant(grant);
        return new ResponseEntity<>(updateGrant, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteGrant(@PathVariable("id") Long id) {
        grantService.deleteGrant(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}

