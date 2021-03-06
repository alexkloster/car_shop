package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.ChartData;
import by.bsuir.kp.carshop.dao.entity.*;
import by.bsuir.kp.carshop.enumerated.Role;
import by.bsuir.kp.carshop.sevice.*;
import by.bsuir.kp.carshop.filtering.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private ManufactureService manufactureService;

    @Autowired
    private ModelService modelService;

    @Autowired
    private EngineService engineService;


    @RequestMapping("/adminPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "adminpage";
    }


    @RequestMapping("/users")
    public String users(HttpServletRequest request) {
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }


    @RequestMapping("/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest request) {
        userService.deleteUser((long) id);
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "ALL_USERS");
        return "adminpage";
    }

    @RequestMapping("/edit-user")
    public String editUser(@RequestParam long id, HttpServletRequest request) {
        request.setAttribute("user", userService.findById(id));
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @RequestMapping("/new-user")
    public String newUser(HttpServletRequest request) {
        request.setAttribute("user", new UserEntity());
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @PostMapping("/save-user")
    public String registration(@ModelAttribute UserEntity user, BindingResult bindingResult, HttpServletRequest request) {
        System.out.println(user.getLogin() + user.getPassword());
        user.setRole(Role.USER);
        user.setSubmitted(true);
        userService.registration(user);
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }

    @RequestMapping("/statistic")
    public String statistic(HttpServletRequest request, Model model) {
        request.setAttribute("orders", orderService.getAllOrders());
        request.setAttribute("users", userService.getAllUsers());
        filteringOptions(request, model, new OrderFiltering());

        return "adminpage";
    }



    @RequestMapping("/filter-orders")
    public String statistic(@ModelAttribute OrderFiltering filtering,
                            HttpServletRequest request, Model model) {
        request.setAttribute("mode", "MODE_STAT");
        request.setAttribute("orders", orderService.filterOrders(filtering));

        System.out.println(filtering);


        filteringOptions(request, model, filtering);


        return "adminpage";
    }


    private void filteringOptions(HttpServletRequest request, Model model, OrderFiltering orderFiltering) {
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("clients", clientService.getAllClients());
        request.setAttribute("manufactures", manufactureService.getAllManufactures());
        request.setAttribute("models", modelService.getAllModels());
        request.setAttribute("engines", engineService.getAllEngines());

        request.setAttribute("mode", "MODE_STAT");

        model.addAttribute("filtering", orderFiltering);
    }


    @GetMapping("/getModelStatisticAdmin/{id}")
    @ResponseBody
    public ChartData modelInfo(@PathVariable Long id){
        if(id.intValue() == -1){
            return orderService.getModelData(null);
        }
        return orderService.getModelData(userService.findById(id));
    }

    @GetMapping("/getEngineStatisticAdmin/{id}")
    @ResponseBody
    public ChartData engineInfo(@PathVariable Long id){

        if(id.intValue() == -1){
            return orderService.getEngineData(null);
        }
        return orderService.getEngineData(userService.findById(id));    }

    @GetMapping("/getClientStatisticAdmin/{id}")
    @ResponseBody
    public ChartData clientInfo(@PathVariable Long id){

        if(id.intValue() == -1){
            return orderService.getClientData(null);
        }
        return orderService.getClientData(userService.findById(id));
    }

    @GetMapping("/getUserStatisticAdmin")
    @ResponseBody
    public ChartData userInfo(){

        return orderService.getUserData();
    }






}
