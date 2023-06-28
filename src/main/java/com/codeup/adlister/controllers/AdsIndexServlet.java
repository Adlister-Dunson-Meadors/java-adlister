package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        System.out.println(id);
        if (id != null){
            request.setAttribute("ad", DaoFactory.getAdsDao().fetchById(Long.parseLong(id)));
            request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
        }
//        else if (){
//            request.setAttribute("ad", DaoFactory.getAdsDao().removeById(Long.parseLong(id)));
//            request.getRequestDispatcher("/WEB-INF/ads/details.jsp").forward(request, response);
//        }
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
