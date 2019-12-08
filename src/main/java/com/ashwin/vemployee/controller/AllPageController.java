package com.ashwin.vemployee.controller;

import com.ashwin.vemployee.model.Employee;
import com.ashwin.vemployee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AllPageController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/")
    public ModelAndView home(Model model) {
        return new ModelAndView("home");
    }


    @GetMapping("/admin")
    public ModelAndView adminDashboard(Model model) {
           return new ModelAndView("admin");
    }

    @GetMapping("/all-employee")
    public ModelAndView allEmmployee(Model model) {
        model.addAttribute("employees",employeeService.getAll());
       return new ModelAndView("allemployee");
    }

    @GetMapping("/add-employee")
    public ModelAndView empAdmin(Model model) {
        Employee employee=new Employee();
        model.addAttribute("employee", employee);
        return new ModelAndView("add-new-employee");
    }

    // POST: Save product
    @RequestMapping(value = { "/add-employee" }, method = RequestMethod.POST)
    public String productSave(HttpServletRequest request, @ModelAttribute("employee") Employee employee)

    {
        employeeService.saveEmployee(request,employee);

        return "redirect:/add-employee";
    }
}
