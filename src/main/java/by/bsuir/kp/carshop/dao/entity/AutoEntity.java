package by.bsuir.kp.carshop.dao.entity;

import javax.persistence.*;

@Entity
@Table(name = "auto")
public class AutoEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @ManyToOne
    @JoinColumn(name = "model_id")
    private ModelEntity model;

    @ManyToOne
    @JoinColumn(name = "engine_id")
    private EngineEntity engine;

    public AutoEntity(ModelEntity model, EngineEntity engine) {
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
