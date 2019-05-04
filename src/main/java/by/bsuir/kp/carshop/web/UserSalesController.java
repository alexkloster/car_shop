package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.ChartData;
import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.dao.entity.OrderEntity;
import by.bsuir.kp.carshop.filtering.OrderFiltering;
import by.bsuir.kp.carshop.sevice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.HttpRequestHandler;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class UserSalesController {

    @Autowired
    private EngineService engineService;

    @Autowired
    private ModelService modelService;

    @Autowired
    private VehicleTypeService vehicleTypeService;

    @Autowired
    private ManufactureService manufactureService;

    @Autowired
    private AutoService autoService;

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/purchase")
    public String purchases(HttpServletRequest request, Model model) {
        request.setAttribute("orders", orderService.getAllOrders());
        filteringOptions(request, model);
        return "userSales";
    }

    @GetMapping("/getModelStatistic")
    @ResponseBody
    public ChartData modelInfo(){

        return orderService.getModelData(userService.getCurrentUser());
    }

    @GetMapping("/getEngineStatistic")
    @ResponseBody
    public ChartData engineInfo(){

        return orderService.getEngineData(userService.getCurrentUser());
    }

    @GetMapping("/getClientStatistic")
    @ResponseBody
    public ChartData clientInfo(){

        return orderService.getClientData(userService.getCurrentUser());
    }


    private void filteringOptions(HttpServletRequest request, Model model) {
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("clients", clientService.getAllClients());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        request.setAttribute("engines", engineService.getAllEngines());

        request.setAttribute("mode", "MODE_STAT");

        model.addAttribute("filtering", new OrderFiltering());
    }



}
