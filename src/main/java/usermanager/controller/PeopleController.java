package usermanager.controller;

import org.springframework.web.bind.annotation.*;
import usermanager.model.User;
import usermanager.service.ImpUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class PeopleController {
    @Autowired
    private ImpUserService userService;


    @RequestMapping(value = "people/{page}", method = RequestMethod.GET)
    public String showAllUsers( @PathVariable("page") int page, Model model){
        model.addAttribute("user", new User());
        model.addAttribute("listUsers", userService.listUsers(page-1));
        return "people";
    }

    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id){
        userService.removeUser(id);
        return "redirect:/people/1";
    }

    @RequestMapping(value = "peopleData/", method = RequestMethod.POST)
    public String peopleData(@RequestParam("name") String name, Model model){
       if(this.userService.getUsersByName(name)!=null)
        model.addAttribute("usersByName",userService.getUsersByName(name));
        return "peopleData";
    }


    @RequestMapping("edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model){
        model.addAttribute("user", userService.getUserById(id));
        model.addAttribute("listUsers", userService.listUsers(1));
        return "people";
    }

    @RequestMapping(value = "/people/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("user") User user){

            this.userService.addUser(user);


        return "redirect:/people/1";
    }
}
