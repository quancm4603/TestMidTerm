package com.quancm.testmidterm.controllers;

import com.quancm.testmidterm.daos.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchProductController", urlPatterns = "/search")
public class SearchProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        String keyword = request.getParameter("keyword").trim();
        request.setAttribute("products", productDao.searchProductByKeyword(keyword));
        request.getServletContext().getRequestDispatcher("/views/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}