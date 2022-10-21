package edu.hhu.tanzhiye.controller;

import edu.hhu.tanzhiye.entity.User;
import edu.hhu.tanzhiye.service.UserService;
import edu.hhu.tanzhiye.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Data;


import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Date;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

    private UserService userService = new UserServiceImpl();
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String name = req.getParameter("name");
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        String gender = req.getParameter("gender");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String birthdayString = req.getParameter("birthday");
        String introduction = req.getParameter("introduction");

        User user = new User();
        user.setName(name);
        user.setAccount(account);
        user.setPassword(password);
        user.setGender(Boolean.parseBoolean(gender));
        user.setPhone(phone);
        user.setEmail(email);
        Date birthday = null;
        try {
            birthday = sdf.parse(birthdayString);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
        user.setBirthday(birthday);
        user.setIntroduction(introduction);
        System.out.println(user);

        userService.register(user);

        resp.sendRedirect("/login.jsp");
    }
}
