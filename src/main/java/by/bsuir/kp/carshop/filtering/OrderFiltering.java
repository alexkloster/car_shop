package by.bsuir.kp.carshop.filtering;

public class OrderFiltering {
    private Long userId;
    private Long clientId;
    private Long manufactureId;
    private Long modelId;
    private Long engineId;
    private Boolean ready;


    public OrderFiltering(Long userId, Long clientId, Long manufactureId, Long modelId, Long engineId, Boolean ready) {
        this.userId = userId;
        this.clientId = clientId;
        this.manufactureId = manufactureId;
        this.modelId = modelId;
        this.engineId = engineId;
        this.ready = ready;
    }

    public OrderFiltering() {
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getClientId() {
        return clientId;
    }

    public void setClientId(Long clientId) {
        this.clientId = clientId;
    }

    public Long getManufactureId() {
        return manufactureId;
    }

    public void setManufactureId(Long manufactureId) {
        this.manufactureId = manufactureId;
    }

    public Long getModelId() {
        return modelId;
    }

    public void setModelId(Long modelId) {
        this.modelId = modelId;
    }

    public Long getEngineId() {
        return engineId;
    }

    public void setEngineId(Long engineId) {
        this.engineId = engineId;
    }

    public Boolean getReady() {
        return ready;
    }

    public void setReady(Boolean ready) {
        this.ready = ready;
    }


    @Override
    public String toString() {
        return "OrderFiltering{" +
                "userId=" + userId +
                ", clientId=" + clientId +
                ", manufactureId=" + manufactureId +
                ", modelId=" + modelId +
                ", engineId=" + engineId +
                ", ready=" + ready +
                '}';
    }
}

