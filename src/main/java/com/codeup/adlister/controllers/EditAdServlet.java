package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/edit/*")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String editId = request.getPathInfo().substring(1);
        Ad ad = DaoFactory.getAdsDao().fetchById(Long.valueOf(editId));
        request.getSession().setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp")
                .forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Ad ad = (Ad) request.getSession().getAttribute("ad");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        System.out.println(title);
        System.out.println(description);
        DaoFactory.getAdsDao().updateByTitle(ad.getId(), title);
        DaoFactory.getAdsDao().updateByDescription(ad.getId(),description);
        response.sendRedirect("/ads");
    }
}
