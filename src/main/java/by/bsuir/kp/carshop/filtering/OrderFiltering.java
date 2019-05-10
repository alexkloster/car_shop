package by.bsuir.kp.carshop.filtering;

import org.springframework.ui.Model;

public class OrderFiltering {
    private Long userId;
    private Long clientId;
    private Long modelId;
    private Long engineId;
    private Boolean ready;

    public OrderFiltering() {
    }

    public OrderFiltering(Long userId, Long clientId, Long modelId, Long engineId, Boolean ready) {
        this.userId = userId;
        this.clientId = clientId;
        this.modelId = modelId;
        this.engineId = engineId;
        this.ready = ready;
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
        final StringBuffer sb = new StringBuffer("OrderFiltering{");
        sb.append("userId=").append(userId);
        sb.append(", clientId=").append(clientId);
        sb.append(", modelId=").append(modelId);
        sb.append(", engineId=").append(engineId);
        sb.append(", ready=").append(ready);
        sb.append('}');
        return sb.toString();
    }
}

