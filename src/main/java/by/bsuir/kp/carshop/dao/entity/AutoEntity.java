package by.bsuir.kp.carshop.dao.entity;

import javax.persistence.*;

@Entity
@Table(name = "auto")
public class AutoEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String vin;

    @ManyToOne
    @JoinColumn(name = "model_id")
    private ModelEntity model;

    @ManyToOne
    @JoinColumn(name = "engine_id")
    private EngineEntity engine;

    public AutoEntity(String vin, ModelEntity model, EngineEntity engine) {
        this.vin = vin;
        this.model = model;
        this.engine = engine;
    }

    public AutoEntity() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public ModelEntity getModel() {
        return model;
    }

    public void setModel(ModelEntity model) {
        this.model = model;
    }

    public EngineEntity getEngine() {
        return engine;
    }

    public void setEngine(EngineEntity engine) {
        this.engine = engine;
    }
}
