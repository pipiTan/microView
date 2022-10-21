package edu.hhu.tanzhiye.controller;

import edu.hhu.tanzhiye.dao.AdminDao;
import edu.hhu.tanzhiye.entity.Admin;
import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.service.AdminService;

import edu.hhu.tanzhiye.service.impl.AdminServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/adminLogin")
public class AdminLoginController extends HttpServlet {

    private AdminService adminService = new AdminServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String password = req.getParameter("password");

        Admin admin = adminService.login(account, password);

        if (admin!=null) {
            req.getSession().setAttribute("admin", admin);
            resp.sendRedirect("/admin/video_list.jsp");
        } else {
            resp.sendRedirect("/admin/login_fail.jsp");
        }
    }
}
