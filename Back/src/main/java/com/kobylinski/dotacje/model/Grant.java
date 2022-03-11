package com.kobylinski.dotacje.model;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "grants")

@JsonIdentityInfo(
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id_grant")
public class Grant implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id_grant;
    private LocalDate startDate;
    private LocalDate finishDate;
    private double maxSubsidy;
    @ElementCollection
    private Set<String> description = new HashSet<>();
    @Column(length = 300)
    private String detailsLink;
    private String name;
    @Transient
    private boolean isActive;

    @ManyToMany(
            mappedBy = "availableGrants",
            cascade = CascadeType.ALL
    )
    private Set<Farmer> farmer=new HashSet<>();

    public Grant() {}

    public Grant(LocalDate finishDate, double maxSubsidy, Set<String> description, String detailsLink, String name, Set<Farmer> farmer, LocalDate startDate) {

        this.finishDate = finishDate;
        this.maxSubsidy = maxSubsidy;
        this.description = description;
        this.detailsLink = detailsLink;
        this.name = name;
        this.farmer = farmer;
        this.startDate = startDate;
        this.isActive=checkIsActive();
    }
    public boolean checkIsActive() {
        LocalDate now=LocalDate.now();
        if(this.finishDate!=null||this.startDate!=null)
       return (now.isBefore(finishDate)&&now.isAfter(startDate));
        return true;
    }
    public boolean getIsActive(){
        return checkIsActive();
    }

    public void setIsActive() {
        isActive = checkIsActive();
    }

    @Override
    public String toString() {
        return "Grant{" +
                "id_grant=" + id_grant +
                ", finishDate=" + finishDate +
                ", maxSubsidy=" + maxSubsidy +
                ", description=" + description +
                ", detailsLink='" + detailsLink + '\'' +
                ", nazwa='" + name + '\'' +
                ", farmer=" + farmer +
                ", startDate=" + startDate +
                '}';
    }



    public Long getId_grant() {
        return id_grant;
    }

    public void setId_grant(Long id_grant) {
        this.id_grant = id_grant;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(LocalDate finishDate) {
        this.finishDate = finishDate;
    }

    public double getMaxSubsidy() {
        return maxSubsidy;
    }

    public void setMaxSubsidy(double maxSubsidy) {
        this.maxSubsidy = maxSubsidy;
    }

    public Set<String> getDescription() {
        return description;
    }

    public void setDescription(Set<String> description) {
        this.description = description;
    }

    public String getDetailsLink() {
        return detailsLink;
    }

    public void setDetailsLink(String detailsLink) {
        this.detailsLink = detailsLink;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Farmer> getFarmer() {
        return farmer;
    }

    public void setFarmer(Set<Farmer> farmer) {
        this.farmer = farmer;
    }

    public void addFarmer(Farmer f) {
        if (farmer == null) {
            farmer = new HashSet<>();
        }
        farmer.add(f);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Grant)) return false;
        Grant grant = (Grant) o;
        return getName().equals(grant.getName());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getName());
    }
}





