package edu.hhu.tanzhiye.service.impl;

import edu.hhu.tanzhiye.dao.UserDao;
import edu.hhu.tanzhiye.dao.impl.UserDaoImpl;
import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void register(User user) {
        userDao.insert(user);
    }

    @Override
    public User login(String account, String password) {
        return userDao.selectByActAndPwd(account, password);
    }
}
