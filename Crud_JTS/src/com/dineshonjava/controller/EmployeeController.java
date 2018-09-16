package com.dineshonjava.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dineshonjava.model.Employee;
import com.dineshonjava.service.EmployeeService;

/**
 * @author Dinesh Rajput
 *
 */
@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("command") Employee employee, 
			BindingResult result) {
		
		employeeService.addEmployee(employee);
		return new ModelAndView("redirect:/add.html");
	}

	@RequestMapping(value="/employees", method = RequestMethod.GET)
	public ModelAndView listEmployees(@ModelAttribute("command")  Employee employee,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("employees",  employeeService.listEmployeess());
		return new ModelAndView("employeesList", model);
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addEmployee(@ModelAttribute("command")  Employee employee,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("employees", employeeService.listEmployeess());
		return new ModelAndView("addEmployee", model);
	}
	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView editEmployee(@ModelAttribute("command")  Employee Employee,
			BindingResult result) {
		employeeService.deleteEmployee(Employee);
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("employees",  employeeService.listEmployeess());
		return new ModelAndView("addEmployee", model);
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView deleteEmployee(@ModelAttribute("command")  Employee Employee,
			BindingResult result) {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("employee", employeeService.getEmployee(Employee.getEmpId()));
		model.put("employees",  employeeService.listEmployeess());
		return new ModelAndView("addEmployee", model);
	}
	
	
	
	
}
