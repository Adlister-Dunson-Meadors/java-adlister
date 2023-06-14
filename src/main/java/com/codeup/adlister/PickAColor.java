package com.codeup.adlister;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PickAColor extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String color = request.getParameter("color");

        response.sendRedirect(request.getContextPath() + "/view-color?color=" + color);
    }
}


