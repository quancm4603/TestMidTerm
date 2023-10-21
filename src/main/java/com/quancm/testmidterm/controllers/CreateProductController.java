package com.quancm.testmidterm.controllers;

import com.quancm.testmidterm.daos.ProductDao;
import com.quancm.testmidterm.models.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "CreateProductController", urlPatterns = "/create-product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50)
public class CreateProductController extends HttpServlet {
    private ProductDao productDao = new ProductDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/views/form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name").trim();
            String description = request.getParameter("description").trim();
            String category = request.getParameter("category").trim();


            // xu ly image
            Part part = request.getPart("image");
            // path folder chua anh
            String folderSaveFile = "/images";
            String pathUpload = request.getServletContext().getRealPath(folderSaveFile);
            // file name user upload
            String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();

            if (!Files.exists(Paths.get(pathUpload))) {
                Files.createDirectories(Paths.get(pathUpload));
            }
            part.write(pathUpload + "/" + fileName);

            if (name != null && description != null && category != null) {
                // insert db
                String imageSave = folderSaveFile + "/" + fileName;
                Product product = new Product();
                product.setName(name);
                product.setDescription(description);
                product.setCategory(category);
                product.setImage(imageSave);


                productDao.addProduct(product);
                response.sendRedirect("./home");
                return;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("./create-product");

    }
}