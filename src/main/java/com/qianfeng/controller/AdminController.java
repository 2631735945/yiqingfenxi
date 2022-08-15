package com.qianfeng.controller;

import com.qianfeng.pojo.Admin;
import com.qianfeng.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class AdminController {
    @Resource
    AdminService adminService;

    @RequestMapping("/login")
    public String log(Admin admin, Model model){
        Admin admin1=adminService.adminLogin(admin);
//        model.addAttribute("admin",admin1);
        if(admin1!=null){
            return "queryall";
        }    else
            return "loginfail";
    }

    @RequestMapping("/Register")
    public String  reg(Admin admin){
        Admin admin2=adminService.checkReg(admin.getAccount());
        if (admin2==null){
            adminService.registerAdmin(admin);
            return "registerSuccess";
        }else
             return "registerFail";
    }

}
