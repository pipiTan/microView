package edu.hhu.tanzhiye.service;

import edu.hhu.tanzhiye.entity.User;

public interface UserService {

    void register(User user);

    User login(String account, String password);
}
