package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.dao.entity.ManufactureEntity;
import by.bsuir.kp.carshop.dao.entity.ModelEntity;
import by.bsuir.kp.carshop.dao.entity.VehicleTypeEntity;
import by.bsuir.kp.carshop.filtering.AutoFiltering;
import by.bsuir.kp.carshop.filtering.EngineFiltering;
import by.bsuir.kp.carshop.filtering.ModelFiltering;
import by.bsuir.kp.carshop.filtering.OrderFiltering;
import by.bsuir.kp.carshop.sevice.*;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

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

    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }


    @RequestMapping("/sell-auto")
    public String sellAuto(HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_SELL");
        model.addAttribute("filtering", new OrderFiltering());

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
        request.setAttribute("cars", autoService.getAllCars());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        request.setAttribute("vehicleTypes", vehicleTypeService.getAllVehicleTypes());
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("engines", engineService.getAllEngines());


        model.addAttribute("autoFilter", new AutoFiltering());
        return "userpage";
    }
}
