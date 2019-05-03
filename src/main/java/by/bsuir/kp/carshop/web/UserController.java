package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.dao.entity.*;
import by.bsuir.kp.carshop.filtering.AutoFiltering;
import by.bsuir.kp.carshop.filtering.EngineFiltering;
import by.bsuir.kp.carshop.filtering.ModelFiltering;
import by.bsuir.kp.carshop.filtering.OrderFiltering;
import by.bsuir.kp.carshop.sevice.*;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

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


    @InitBinder
    public void initBinder(final WebDataBinder binder) {
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-dd-MM");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }


    @RequestMapping("/sell")
    public String sellAuto(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_AUTOMOBILES");
        request.setAttribute("autoMode", "MODE_SELL");

        request.setAttribute("cars", autoService.getAllCars());


        setCarAttributes(request, model, new AutoFiltering());

        return "userpage";
    }

    @RequestMapping("/engine")
    public String engine(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_ENGINE");
        request.setAttribute("engines", engineService.getAllEngines());
        model.addAttribute("engineFilter", new EngineFiltering());
        return "userpage";
    }


    @RequestMapping("/engines-filter")
    public String filterEngine(@ModelAttribute EngineFiltering engineFiltering, HttpServletRequest request, Model model) {

        request.setAttribute("mode", "MODE_ENGINE");
        request.setAttribute("engines", engineService.filterEngines(engineFiltering));
        model.addAttribute("engineFilter", engineFiltering);
        return "userpage";
    }

    @RequestMapping("/engine-edit")
    public String engineEdit(@RequestParam Long id, HttpServletRequest request) {

        request.setAttribute("mode", "MODE_ENGINE_EDIT");
        request.setAttribute("engine", engineService.getById(id));
        return "userpage";
    }

    @RequestMapping("/engine-new")
    public String engineNew(HttpServletRequest request) {

        request.setAttribute("mode", "MODE_ENGINE_EDIT");
        request.setAttribute("engine", new EngineEntity());
        return "userpage";
    }

    @RequestMapping("/engine-save")
    public String engineSave(@ModelAttribute EngineEntity engineEntity, HttpServletRequest request, Model model) {
        request.setAttribute("engine", engineService.save(engineEntity));
        return engine(request, model);
    }

    @RequestMapping("/engine-delete")
    public String engineDelete(@RequestParam long id, HttpServletRequest request, Model model) {
        engineService.deleteById(id);
        return engine(request, model);
    }

    @RequestMapping("/model")
    public String model(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_MODELS");
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());

        model.addAttribute("modelFilter", new ModelFiltering());
        return "userpage";
    }


    @RequestMapping("/model-filter")
    public String filterModel(@ModelAttribute ModelFiltering modelFiltering, HttpServletRequest request, Model model) {

        request.setAttribute("mode", "MODE_MODELS");
        request.setAttribute("models", modelService.filterModels(modelFiltering));
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        model.addAttribute("modelFilter", modelFiltering);
        return "userpage";
    }

    @RequestMapping("/model-edit")
    public String modelEdit(@RequestParam Long id, HttpServletRequest request, Model model) {

        request.setAttribute("mode", "MODE_MODEL_EDIT");
        request.setAttribute("model", modelService.getById(id));
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        model.addAttribute("model", modelService.getById(id));
        return "userpage";
    }

    @RequestMapping("/model-new")
    public String modelNew(HttpServletRequest request, Model model) {
        ModelEntity modelEntity = new ModelEntity();
        modelEntity.setManufacture(new ManufactureEntity());
        modelEntity.setVehicleType(new VehicleTypeEntity());
        request.setAttribute("mode", "MODE_MODEL_EDIT");
        request.setAttribute("model", modelEntity);
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());

        model.addAttribute("model");
        return "userpage";
    }

    @RequestMapping("/model-save")
    public String modelSave(@ModelAttribute ModelEntity modelEntity, HttpServletRequest request, Model model) {
        modelService.save(modelEntity);
        return model(request, model);
    }

    @RequestMapping("/model-delete")
    public String modelDelete(@RequestParam long id, HttpServletRequest request, Model model) {
        modelService.deleteById(id);
        return model(request, model);
    }



    @RequestMapping("/car")
    public String car(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_AUTOMOBILES");
        request.setAttribute("autoMode", "MODE_AUTOMOBILE");

        request.setAttribute("cars", autoService.getAllCars());

        setCarAttributes(request, model, new AutoFiltering());

        return "userpage";
    }

    private void setCarAttributes(HttpServletRequest request, Model model, AutoFiltering filtering) {
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("engines", engineService.getAllEngines());

        model.addAttribute("autoFilter", filtering);

    }


    @RequestMapping("/car-filter")
    public String filterCar(@ModelAttribute AutoFiltering filtering, HttpServletRequest request, Model model) {
        request.setAttribute("cars", autoService.filterCars(filtering));

        request.setAttribute("autoMode", "MODE_AUTOMOBILE");
        request.setAttribute("mode", "MODE_AUTOMOBILES");

        setCarAttributes(request, model, filtering);
        return "userpage";
    }

    @RequestMapping("/car-edit")
    public String carEdit(@RequestParam Long id, HttpServletRequest request, Model model) {

        AutoEntity autoEntity = autoService.getById(id);

        request.setAttribute("mode", "MODE_AUTOMOBILE_EDIT");
        request.setAttribute("car", autoEntity);
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("engines", engineService.getAllEngines());

        model.addAttribute("car", autoEntity);

        return "userpage";
    }

    @RequestMapping("/car-new")
    public String carNew(HttpServletRequest request, Model model) {
        AutoEntity autoEntity = new AutoEntity();
        autoEntity.setEngine(new EngineEntity());
        autoEntity.setModel(new ModelEntity());

        request.setAttribute("mode", "MODE_AUTOMOBILE_EDIT");
        request.setAttribute("autoMode", "MODE_AUTOMOBILE");
        request.setAttribute("car", autoEntity);
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("engines", engineService.getAllEngines());

        model.addAttribute("car", autoEntity);
        return "userpage";
    }

    @RequestMapping("car-save")
    public String carSave(@ModelAttribute AutoEntity autoEntity, HttpServletRequest request, Model model) {
        autoService.save(autoEntity);
        return car(request, model);
    }

    @RequestMapping("/car-delete")
    public String carDelete(@RequestParam long id, HttpServletRequest request, Model model) {
        autoService.deleteById(id);
        return car(request, model);
    }


    @GetMapping("/getEngineInfo/{id}")
    @ResponseBody
    public EngineEntity engineInfo(@PathVariable("id") Long id, Model model){
        return engineService.getById(id);
    }

    @GetMapping("/getModelInfo/{id}")
    @ResponseBody
    public ModelEntity modelInfo(@PathVariable("id") Long id, Model model){
        return modelService.getById(id);
    }


    @RequestMapping("/fill-client")
    public String fillClient(@RequestParam long carId, HttpServletRequest request, Model model) {
        AutoEntity autoEntity = autoService.getById(carId);

        request.setAttribute("mode", "MODE_FILL_CLIENT");

        request.setAttribute("car", autoEntity);

        model.addAttribute("order", new OrderEntity());
        return "userpage";
    }


    @RequestMapping("/find-client")
    public String findClient(@ModelAttribute ClientEntity client, @RequestParam long carId, HttpServletRequest request, Model model) {

        client = clientService.getBySeriesAndNumber(client);

        if (client.getId() == null) {
            request.setAttribute("client_mode", "NEW");
        } else {
            request.setAttribute("client_mode", "EXISTS");
        }

        model.addAttribute("client", client);

        request.setAttribute("client", client);
        return fillClient(carId, request, model);
    }


    @RequestMapping("/save-client")
    public String saveClient(@ModelAttribute ClientEntity client, @RequestParam long carId, HttpServletRequest request, Model model) {
        client = clientService.save(client);
        return findClient(client, carId, request, model);
    }


    @RequestMapping("/save-order")
    public String saveClient(@ModelAttribute OrderEntity order, @RequestParam long carId, @RequestParam long clientId, HttpServletRequest request, Model model) {
        ClientEntity client = clientService.getById(clientId);
        AutoEntity auto = autoService.getById(carId);
        order.setClient(client);
        order.setAuto(auto);
        order.setUser(userService.getCurrentUser());
        order.setPrice(auto.getEngine().getCost() + auto.getModel().getCost());
        order.setReady(false);
        orderService.save(order);
        return sellAuto(request, model);
    }
}
