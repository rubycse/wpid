package net.wpid.main.controller;

import net.wpid.common.service.AuthService;
import net.wpid.main.domain.Project;
import net.wpid.main.repository.ProjectDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * @author lutfun
 * @since 3/9/17
 */

@Controller
@SessionAttributes(ProjectController.COMMAND_NAME)
@RequestMapping("/project")
public class ProjectController {

    private static final String VIEW_PAGE = "project/show";
    private static final String LIST_PAGE = "project/list";
    public static final String COMMAND_NAME = "project";

    @Autowired
    private AuthService authService;

    @Autowired
    private ProjectDao projectDao;

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public String create(@RequestParam(defaultValue = "0") long id, ModelMap model) throws IllegalAccessException {

        Project project;
        if (id == 0) {
            project = new Project();
            project.setCreatedBy(authService.getCurrentUser());
        } else {
            project = projectDao.getProject(id);
        }

        checkAccess(project);

        model.put("project", project);
        model.put("readOnly", project.getId() != 0);

        return VIEW_PAGE;
    }

    @RequestMapping(value = "/show", method = RequestMethod.POST, params = "_save")
    public String save(@Valid @ModelAttribute(COMMAND_NAME) Project project, BindingResult result,
                       RedirectAttributes redirectAttributes) throws IllegalAccessException {

        checkAccess(project);

        if (result.hasErrors()) {
            return VIEW_PAGE;
        }

        project = projectDao.save(project);
        redirectAttributes.addAttribute("id", project.getId());

        return "redirect:show";
    }

    @RequestMapping(value = "/show", method = RequestMethod.POST, params = "_edit")
    public String edit(@ModelAttribute(COMMAND_NAME) Project project, ModelMap model) throws IllegalAccessException {

        checkAccess(project);

        model.put("readOnly", false);
        model.put("project", projectDao.getProject(project.getId()));

        return VIEW_PAGE;
    }

    @RequestMapping(value = "/show", method = RequestMethod.POST, params = "_delete")
    public String delete(@ModelAttribute(COMMAND_NAME) Project project, ModelMap model) throws IllegalAccessException {

        checkAccess(project);

        projectDao.deleteProject(project.getId());

        return "redirect:list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(ModelMap model) throws IllegalAccessException {

        model.put("projects", projectDao.getProjects(authService.getCurrentUser()));

        return LIST_PAGE;
    }

    private void checkAccess(Project project) throws IllegalAccessException {
        if (project.getCreatedBy().getId() != authService.getCurrentUser().getId()) {
            throw new IllegalAccessException("Insufficient Privilege");
        }
    }
}
