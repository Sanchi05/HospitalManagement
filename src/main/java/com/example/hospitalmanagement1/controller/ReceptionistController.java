package com.example.hospitalmanagement1.controller;

import com.example.hospitalmanagement1.Service.ReceptionistService;
import com.example.hospitalmanagement1.model.Receptionist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class ReceptionistController {

    @Autowired
    ReceptionistService receptionistService;


    @RequestMapping(value = "/receptionist", method = RequestMethod.GET)
    public ModelAndView show() {
        return new ModelAndView("receptionist", "receptionist", new Receptionist());
    }

    @RequestMapping(value = "/receptionist", method = RequestMethod.POST)
    public ModelAndView processRequest(@ModelAttribute("receptionist") Receptionist receptionist) {
        receptionistService.insertReceptionist(receptionist);
        System.out.println(receptionist);
        ModelAndView modelAndView = new ModelAndView("getreceptionist");
        modelAndView.addObject("receptionist", receptionist);
        return modelAndView;
    }

    @RequestMapping("/getreceptionist")
    public ModelAndView getReceptionist() {
        List<Receptionist> receptionist = receptionistService.getreceptionist();
        ModelAndView model = new ModelAndView("getreceptionist");
        model.addObject("receptionist", receptionist);
        return model;
    }
}











