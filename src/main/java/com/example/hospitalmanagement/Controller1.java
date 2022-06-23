package com.example.hospitalmanagement;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controller1 {

    @Autowired
    AppointService appointServic;

    @RequestMapping(value = "/doctorHome", method = RequestMethod.GET)
    public String showHome(){
        return "doctore_home";
    }

    @RequestMapping (value = "/newAppointment",method= RequestMethod.GET)
    public ModelAndView makeApt(){
        return new ModelAndView("appointments","appt", new Appointment());
    }

    @RequestMapping (value = "/newAppointment",method = RequestMethod.POST)
    public ModelAndView insertApt(@ModelAttribute("appt") Appointment appointment){
        appointServic.inserApt(appointment);
        ModelAndView mav = new ModelAndView("doctore_home");
        mav.addObject("appointment",appointment);
        return mav;
    }
}
