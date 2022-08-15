package com.qianfeng.service.impl;


import com.qianfeng.dao.AdminDao;
import com.qianfeng.pojo.Admin;
import com.qianfeng.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
     AdminDao adminDao;

    @Override
    public Admin adminLogin(Admin admin) {
        return adminDao.adminLogin(admin);
    }

    @Override
    public int registerAdmin(Admin admin) {
        return adminDao.registerAdmin(admin);
    }

    @Override
    public Admin checkReg(String account) {
        return adminDao.checkReg(account);
    }
}
