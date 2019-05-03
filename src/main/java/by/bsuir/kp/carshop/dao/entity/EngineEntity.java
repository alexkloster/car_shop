package by.bsuir.kp.carshop.dao.entity;


import javax.persistence.*;


@Entity
@Table(name = "engine")
public class EngineEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Integer power;

    private Double capacity;


    private Double consumption;

    private Double cost;

    public EngineEntity(String name, Integer power, Double capacity, Double consumption, Double cost) {
        this.name = name;
        this.power = power;
        this.capacity = capacity;
        this.consumption = consumption;
        this.cost = cost;
    }

    public EngineEntity() {
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


    public Integer getPower() {
        return power;
    }

    public void setPower(Integer power) {
        this.power = power;
    }

    public Double getCapacity() {
        return capacity;
    }

    public void setCapacity(Double capacity) {
        this.capacity = capacity;
    }

    public Double getConsumption() {
        return consumption;
    }

    public void setConsumption(Double consumption) {
        this.consumption = consumption;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }
}
