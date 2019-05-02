package by.bsuir.kp.carshop.dao.entity;

import javax.persistence.*;

@Entity
@Table(name = "model")
public class ModelEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Double cost;

    @ManyToOne
    @JoinColumn(name = "vehicle_type_id")
    private VehicleTypeEntity vehicleType;

    @ManyToOne
    @JoinColumn(name = "manufacture_id")
    private ManufactureEntity manufacture;


    public ModelEntity(String name, Double cost, VehicleTypeEntity vehicleType, ManufactureEntity manufacture) {
        this.name = name;
        this.cost = cost;
        this.vehicleType = vehicleType;
        this.manufacture = manufacture;
    }

    public ModelEntity() {
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

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public VehicleTypeEntity getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(VehicleTypeEntity vehicleType) {
        this.vehicleType = vehicleType;
    }

    public ManufactureEntity getManufacture() {
        return manufacture;
    }

    public void setManufacture(ManufactureEntity manufacture) {
        this.manufacture = manufacture;
    }
}
