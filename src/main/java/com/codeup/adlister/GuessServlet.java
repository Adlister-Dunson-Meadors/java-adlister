package com.codeup.adlister;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guess")
public class GuessServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int guess = Integer.parseInt(request.getParameter("guess"));
        int randomNumber = (int) (Math.random() * 3) + 1;

        if (guess == randomNumber) {
            response.sendRedirect(request.getContextPath() + "/correct.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/incorrect.jsp");
        }
    }
}
