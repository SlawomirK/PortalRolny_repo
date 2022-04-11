package com.kobylinski.dotacje.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "farmer")


@JsonIdentityInfo(
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "idFarmer")
public class Farmer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long idFarmer;
    @Column(nullable = true)
    private int age;
    @Column(nullable = true)
    private String area;
    @Column(nullable = true)
    private boolean inKRUS;
    @Column(nullable = true)
    private boolean agricultureIncome;
    @Column(nullable = true)
    private String mainAnimal;
    @Column(nullable = true)
    private int herdSize;
    @ElementCollection
    @Column(nullable = true)
    private Set<String> crops = new HashSet<>();
    private boolean hasForest;
    private boolean hasKids;
    private boolean wantComitments;



    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="farmer_grant",
            joinColumns = {@JoinColumn(name="id_farmer")},
            inverseJoinColumns={@JoinColumn(name="id_grant")}
    )
    @JsonBackReference
    private Set<Grant> availableGrants=new HashSet<>();
    public Farmer() {}

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Set<Grant> getAvailableGrants() {
        return availableGrants;
    }

    public void setAvailableGrants(Set<Grant> availableGrants) {
        this.availableGrants = availableGrants;
    }

    public Farmer( int age, String area, boolean inKRUS, boolean agricultureIncome, String mainAnimal, int herdSize, Set<String> crops, boolean hasForest, boolean hasKids, boolean wantComitments, Set<Grant> availableGr) {

        this.age = age;
        this.area = area;
        this.inKRUS = inKRUS;
        this.agricultureIncome = agricultureIncome;
        this.mainAnimal = mainAnimal;
        this.herdSize = herdSize;
        this.crops = crops;
        this.hasForest = hasForest;
        this.hasKids = hasKids;
        this.wantComitments = wantComitments;
        this.availableGrants=availableGr;
        }

    @Override
    public String toString() {
        return "Farmer{" +
                "idFarmer=" + idFarmer +
                ", age=" + age +
                ", area=" + area +
                ", inKRUS=" + inKRUS +
                ", agricultureIncome=" + agricultureIncome +
                ", mainAnimal='" + mainAnimal + '\'' +
                ", herdSize=" + herdSize +
                ", crops=" + crops +
                ", hasForest=" + hasForest +
                ", hasKids=" + hasKids +
                ", wantComitments=" + wantComitments+

                '}';
    }

    public Long getIdFarmer() {
        return idFarmer;
    }

    public void setIdFarmer(Long idFarmer) {
        this.idFarmer = idFarmer;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    public boolean isInKRUS() {
        return inKRUS;
    }

    public void setInKRUS(boolean inKRUS) {
        this.inKRUS = inKRUS;
    }

    public boolean isAgricultureIncome() {
        return agricultureIncome;
    }

    public void setAgricultureIncome(boolean agricultureIncome) {
        this.agricultureIncome = agricultureIncome;
    }

    public String getMainAnimal() {
        return mainAnimal;
    }

    public void setMainAnimal(String mainAnimal) {
        this.mainAnimal = mainAnimal;
    }

    public int getHerdSize() {
        return herdSize;
    }

    public void setHerdSize(int herdSize) {
        this.herdSize = herdSize;
    }

    public Set<String> getCrops() {
        return crops;
    }

    public void setCrops(Set<String> crops) {
        this.crops = crops;
    }

    public boolean isHasForest() {
        return hasForest;
    }

    public void setHasForest(boolean hasForest) {
        this.hasForest = hasForest;
    }

    public boolean isHasKids() {
        return hasKids;
    }

    public void setHasKids(boolean hasKids) {
        this.hasKids = hasKids;
    }

    public boolean isWantComitments() {
        return wantComitments;
    }

    public void setWantComitments(boolean wantComitments) {

        this.wantComitments = wantComitments;
    }




}
