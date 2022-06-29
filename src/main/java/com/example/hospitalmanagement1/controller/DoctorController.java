package com.example.hospitalmanagement1.controller;
import com.example.hospitalmanagement1.Service.DoctorService;
import com.example.hospitalmanagement1.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class DoctorController {
    @Autowired
    DoctorService doctorService;

//    @RequestMapping("/adminhome")
//    public ModelAndView firstPage() {
//        return new ModelAndView("adminhome");
//    }

    @RequestMapping(value = "/doctor", method = RequestMethod.GET)
    public ModelAndView show(){return new ModelAndView("doctor", "doctor", new Doctor());}

    @RequestMapping(value = "/doctor", method = RequestMethod.POST)
    public ModelAndView processRequest(@ModelAttribute("doctor") Doctor doctor){
        doctorService.insertDoctor(doctor);
//        List<Doctor> doctors = doctorService.getAllDoctor();
        ModelAndView modelAndView = new ModelAndView("getdoctor");
        modelAndView.addObject("doctor",doctor);
        return  modelAndView;}

//    @RequestMapping("/getDoctors")
//    public ModelAndView getDoctors(){
//        List<Doctor> doctors = doctorService.getAllDoctor();
//        ModelAndView model = new ModelAndView("getDoctors");
//        model.addObject("doctors", doctors);
//        return model;
//    }

    //Show all doctors saved in db
    @RequestMapping("/getdoctor")
    public ModelAndView getDoctor(){
        List<Doctor> doctor = doctorService.getdoctor();
        ModelAndView model = new ModelAndView("getdoctor");
        model.addObject("doctor", doctor);
        return model;
    }
}
