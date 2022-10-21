package edu.hhu.tanzhiye.dao;


import edu.hhu.tanzhiye.entity.Admin;

public interface AdminDao {
    Admin selectByActAndPwd(String account, String password);
}
