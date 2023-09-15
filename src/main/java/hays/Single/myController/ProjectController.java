package hays.Single.myController;

import hays.Single.User.ProjectRepo;
import hays.Single.User.Projects;
import hays.Single.User.UserRepo;
import hays.Single.User.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;

@Controller
public class ProjectController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    ProjectRepo projectRepo;

    @GetMapping("/addProject")
    public String addProject(){
        return "addProject";
    }

    @PostMapping("/addProject")
    public String addProject(@ModelAttribute("projects") Projects projects){
        projectRepo.save(projects);
        return "redirect:projectList";
    }

    @GetMapping("/projectList")
    public String showProjects(Authentication authentication, Model model){
        ArrayList<Projects> viewProjects = (ArrayList<Projects>) projectRepo.findAll();
        for(Projects f:viewProjects){
            System.out.println(f.getProjectName());
            System.out.println(f.getPmsm());
            System.out.println(f.getTechLeads());
            System.out.println(f.getTestingLeads());
            System.out.println(f.getMilestonesAchieved());
            System.out.println(f.getStartDate());
            System.out.println(f.getCompletionDate());
        }
        model.addAttribute("projects", viewProjects);
        System.out.println(viewProjects);
        String username = authentication.getName();
        Users users = userRepo.findByEmail(username).get();
        model.addAttribute("user", users);
        return "projectList";
    }

    @GetMapping("/delete/{idx}")
    public String deleteProject(@PathVariable("idx")long id){
        projectRepo.deleteById(id);
        return "projectList";
    }

    @GetMapping("edit/{idx}")
    public String editProject(@PathVariable("idx")long id, Model model){
        Projects s = projectRepo.findById(id).get();
        model.addAttribute("projects", s);
        return "addProject";
    }
}
