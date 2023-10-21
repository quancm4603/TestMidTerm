package com.quancm.testmidterm.controllers;

import com.quancm.testmidterm.daos.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "HomeController", urlPatterns = {"/home", "/"})
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("email") != null) {
//            request.setAttribute("displayLogin", "none");
//            request.setAttribute("username" , session.getAttribute("email"));
        }else {
            request.setAttribute("displayHello", "none");
            request.setAttribute("displayLogout", "none");
        }

        ProductDao productDao = new ProductDao();
        request.setAttribute("products", productDao.listAllProducts());

        request.getServletContext().getRequestDispatcher("/views/index.jsp").forward(request, response);
    }
}