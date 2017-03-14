package net.wpid.main.controller;

import net.wpid.auth.domain.User;
import net.wpid.common.service.AuthService;
import net.wpid.main.repository.ProjectDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lutfun
 * @since 3/14/17
 */
@Controller
public class HomeController {

    @Autowired
    private ProjectDao projectDao;

    @Autowired
    private AuthService authService;

    @RequestMapping(path = "/home", method = RequestMethod.GET)
    public String home(ModelMap model) {
        System.out.print("hi");
        User currentUser = authService.getCurrentUser();
        model.put("projects", projectDao.getProjects(currentUser));

        return "home";
    }
}
