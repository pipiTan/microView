package edu.hhu.tanzhiye.service.impl;

import edu.hhu.tanzhiye.dao.AdminDao;

import edu.hhu.tanzhiye.dao.impl.AdminDaoImpl;

import edu.hhu.tanzhiye.entity.Admin;

import edu.hhu.tanzhiye.service.AdminService;


public class AdminServiceImpl implements AdminService {

    private AdminDao adminDao = new AdminDaoImpl();

    @Override
    public Admin login(String account, String password) {
        return adminDao.selectByActAndPwd(account, password);
    }
}
