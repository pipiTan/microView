package edu.hhu.tanzhiye.dao;

import edu.hhu.tanzhiye.entity.User;

public interface UserDao {

    void insert(User user);

    User selectByActAndPwd(String account, String password);



}
