package com.example.homepage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringController {

    @Autowired
    RegisterJdbcRepository registerJdbcRepository;



    @RequestMapping(value = "/UserRegister", method = RequestMethod.GET)
    public ModelAndView show_page() {
        System.out.println("Implemented");
        return new ModelAndView("Register", "user", new Register());
    }

    @RequestMapping(value = "/UserRegister", method = RequestMethod.POST)
    public ModelAndView insertInto(@ModelAttribute("user") Register login) {
        System.out.println(login);
        registerJdbcRepository.insert(login);
        System.out.println(login.getPassword());
        ModelAndView modelAndView = new ModelAndView("Userdetails");
        modelAndView.addObject("user", login);
        return modelAndView;
    }



    @RequestMapping(value = "/UserLogin",method = RequestMethod.GET)
    public ModelAndView login_show(){
        return new ModelAndView("Login","loginuser",new Login());
    }


    @RequestMapping(value = "/UserLogin", method = RequestMethod.POST)
    public ModelAndView userlogin(@ModelAttribute("loginuser") @RequestParam("username") int username, @RequestParam("password") String password) {
        ModelAndView mv = new ModelAndView();
        Login login = new Login();
        login.setUsername(username);
        login.setPassword(password);
//        System.out.println(login.getUsername());
//        System.out.println(login.getPassword());
        int name = registerJdbcRepository.loginuser(login);
        if (name != 0) {
            mv.addObject("msg", "Welcome" + name + ",You have successfully logged in");
            mv.setViewName("welcome");

        } else {
            mv.addObject("msg", "Invalid user id or password kindly go back and enter the correct credentials");
            mv.setViewName("welcome");

        }
        return mv;

    }






}

    /*
    @RequestMapping(value = "/new",method = RequestMethod.POST)
    public ModelAndView insertData(@ModelAttribute("userdetails") Login login){
        loginJdbcRepository.insert(login);
        ModelAndView modelAndView = new ModelAndView("Userdetails");
        modelAndView.addObject("login",login);
        return modelAndView;
    }*/

