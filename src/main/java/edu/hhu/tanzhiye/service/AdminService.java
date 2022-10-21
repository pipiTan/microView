package edu.hhu.tanzhiye.service;

import edu.hhu.tanzhiye.entity.Admin;
import edu.hhu.tanzhiye.entity.User;

public interface AdminService {



    Admin login(String account, String password);
}
