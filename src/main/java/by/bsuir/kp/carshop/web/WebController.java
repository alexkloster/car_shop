package by.bsuir.kp.carshop.web;

import by.bsuir.kp.carshop.dao.entity.UserEntity;
import by.bsuir.kp.carshop.enumerated.Role;
import by.bsuir.kp.carshop.sevice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class WebController {

    @Autowired
    private UserService userService;

    @RequestMapping("/welcome")
    public String welcome(HttpServletRequest request) {
        checkUser(request);
        request.setAttribute("mode", "MODE_HOME");
        return "welcomepage";
    }

    @RequestMapping("/register")
    public String registration(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_REGISTER");
        return "welcomepage";
    }


    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_LOGIN");
        return "welcomepage";
    }

    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute UserEntity user, HttpServletRequest request) {
        UserEntity userEntity = userService.authorisation(user.getLogin(), user.getPassword());
        if (userEntity != null && userEntity.getRole() != null) {
            if (userEntity.getRole() == Role.USER) {
                request.setAttribute("mode", "MODE_HOME");
                return "userpage";
            } else {
                request.setAttribute("mode", "MODE_HOME");
                return "adminpage";
            }
        }
        else {
            request.setAttribute("error", "Invalid Username or Password");
            request.setAttribute("mode", "MODE_LOGIN");
            return "welcomepage";

        }
    }

    @RequestMapping("/exit")
    public String exit(HttpServletRequest request) {
        userService.setCurrentUser(null);
        return welcome(request);
    }

    @RequestMapping("/main")
    public String main(HttpServletRequest request) {
        return "main";
    }

    private void checkUser(HttpServletRequest request) {
        if (userService.getCurrentUser() == null) {
            request.setAttribute("NAVIGATION_MODE", null);
        } else if (userService.getCurrentUser().getRole() == Role.ADMINISTRATOR) {
            request.setAttribute("NAVIGATION_MODE", "admin");
        } else {
            request.setAttribute("NAVIGATION_MODE", "user");
        }
    }


}
