package by.bsuir.kp.carshop.dao.entity;

import javax.persistence.*;

@Entity
@Table(name = "manufacture")
public class ManufactureEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;


    public ManufactureEntity(String name) {
        this.name = name;
    }

    public ManufactureEntity() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
