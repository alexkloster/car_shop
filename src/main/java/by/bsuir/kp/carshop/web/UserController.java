package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.dao.entity.EngineEntity;
import by.bsuir.kp.carshop.filtering.EngineFiltering;
import by.bsuir.kp.carshop.sevice.EngineService;
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

    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }


    @RequestMapping("/sell-auto")
    public String sellAuto(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_SELL");
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

}
