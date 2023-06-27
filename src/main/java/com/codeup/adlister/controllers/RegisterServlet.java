package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        //-------------------------------------------------------------------------------------------------------------
        //checking the username of user
        User userCheck = DaoFactory.getUsersDao().findByUsername(username);

        if (userCheck != null) {
            request.setAttribute("message", "Username is taken");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        String email = request.getParameter("email");

        String password = request.getParameter("password");
        boolean isValid = password.length() >= 8  && password.matches("(?=.*[A-Z])(?=.*\\d).*");

        if (isValid == false){
            request.setAttribute("message", "Your password has to to be 8 characters, a capital letter and a number");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        String passwordConfirmation = request.getParameter("confirm_password");

        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));
        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }
        User user = new User(username, email, password);

        String hash = Password.hash(user.getPassword());
        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");


    }
}