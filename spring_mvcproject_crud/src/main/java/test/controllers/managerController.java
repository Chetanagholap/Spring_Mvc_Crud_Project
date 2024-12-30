package test.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import test.beans.manager;
import test.dao.managerDao;

@Controller
public class managerController
{
	@Autowired
	managerDao md;
	
	

	@RequestMapping("/saveManagerInfo")
	public String getData(@ModelAttribute("m1")manager m1)
	{
		if(m1.getMpass().equals(m1.getMcpass()))
		{
		md.registerData(m1);
		
		return "redirect:/welcome";
		}
		return null;
	}
	
	@RequestMapping("/welcome")
	public String welcome(Model m)
	{
		
		 List<manager> l1=md.displayall();
		 System.out.println(l1);
		 m.addAttribute("temp",l1);
		return "welcome";
		
	}
		
	@RequestMapping("/deletedata/{id}")
	public String deletedata(@PathVariable int id)
	{
		
		md.deledata(id);
		return  "redirect:/welcome";
	}
	
	@RequestMapping("/editdata/{id}")
	public String editdata(@PathVariable int id,Model m)
	{
		List<manager> l1=md.editrecord(id);
		m.addAttribute("kk" ,l1);
		return "editpage";
	}
	
	@RequestMapping("/updateManagerInfo")
	public String updateManagerInfo(@ModelAttribute("mg") manager mg)
	{
		md.updatemanagerinfo(mg);
		return "redirect:/welcome";
	}

}