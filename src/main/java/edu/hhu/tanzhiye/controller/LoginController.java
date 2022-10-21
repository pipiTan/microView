package edu.hhu.tanzhiye.controller;

import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.service.UserService;
import edu.hhu.tanzhiye.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/login")

public class LoginController extends HttpServlet {

    private UserService userService = new UserServiceImpl();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String password = req.getParameter("password");

        User user = userService.login(account, password);

        if (user!=null) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("/login_success.jsp");
        } else {
            resp.sendRedirect("/login_fail.jsp");
        }
    }
}
