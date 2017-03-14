package net.wpid.main.controller;

import net.wpid.common.service.AuthService;
import net.wpid.main.domain.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * @author lutfun
 * @since 3/9/17
 */

@Controller
@RequestMapping("/project")
public class ProjectController {

    private static final String VIEW_PAGE = "project";

    @Autowired
    private AuthService authService;

    @RequestMapping(value = "create", method = RequestMethod.GET)
    public String create(ModelMap model) {

        Project project = new Project();
        project.setCreatedBy(authService.getUser());

        model.put("project", project);

        return VIEW_PAGE;
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@Valid @ModelAttribute Project project, BindingResult result, ModelMap model) {

        if (result.hasErrors()) {
            return VIEW_PAGE;
        }



        return "project";
    }


}
