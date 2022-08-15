package com.qianfeng.dao;

import com.qianfeng.pojo.Admin;

public interface AdminDao {
    //管理员登录
    Admin adminLogin(Admin admin);

//    注册
    int registerAdmin(Admin admin);

//    检查账号重复
    Admin checkReg(String account);
}
