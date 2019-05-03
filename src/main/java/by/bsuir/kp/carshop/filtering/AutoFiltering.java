package by.bsuir.kp.carshop.filtering;


public class AutoFiltering {

    private ModelFiltering model;

    private EngineFiltering engine;

    private Double minCost;

    private Double maxCost;

    public AutoFiltering(ModelFiltering model, EngineFiltering engine, Double minCost, Double maxCost) {
        this.model = model;
        this.engine = engine;
        this.minCost = minCost;
        this.maxCost = maxCost;
    }

    public AutoFiltering() {
        this.model = new ModelFiltering();
        this.engine = new EngineFiltering();
    }

    public ModelFiltering getModel() {
        return model;
    }

    public void setModel(ModelFiltering model) {
        this.model = model;
    }

    public EngineFiltering getEngine() {
        return engine;
    }

    public void setEngine(EngineFiltering engine) {
        this.engine = engine;
    }

    public Double getMinCost() {
        return minCost;
    }

    public void setMinCost(Double minCost) {
        this.minCost = minCost;
    }

    public Double getMaxCost() {
        return maxCost;
    }

    public void setMaxCost(Double maxCost) {
        this.maxCost = maxCost;
    }
}
