package com.codeup.adlister.controllers;


import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.FindAdServlet", urlPatterns = "/search")
public class FindAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String keyword = request.getParameter("keyword");
        List<Ad> ads = DaoFactory.getAdsDao().fetchByTitle(keyword);
        request.setAttribute("search", ads);
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp")
                .forward(request, response);
    }
}
