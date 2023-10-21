<%@ page import="java.util.List" %>
<%@ page import="com.quancm.testmidterm.models.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website của bạn</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
</head>
<body style="margin-bottom: 100px;">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Trang chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="./">Sản phẩm <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./create-product">Tạo mới sản phẩm</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="./logout">Đăng xuất</a>
            </li>
        </ul>
    </div>
    <div class="ml-auto">
        <span class="navbar-text" style="display: ${displayHello}">Xin chào, <strong id="userName">${username}</strong></span>
        <a href="./logout">
            <button type="button" class="btn btn-outline-primary me-2" style="display: ${displayLogout}">Logout</button>
        </a>
        <a href="./login">
            <button type="button" class="btn btn-outline-primary me-2" style="display: ${displayLogin}">Login</button>
        </a>
    </div>
</nav>
<!-- End Navbar -->

<!-- Danh sách sản phẩm dạng card -->
<div class="container mt-4">
    <h1>Danh Sách Sản Phẩm</h1>

    <!-- Phần tìm kiếm -->
    <div class="input-group mb-3">
        <form action="./search" method="get">
            <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm" name="keyword">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="submit">Tìm kiếm</button>
            </div>
        </form>
    </div>
    <div class="row">
        <%
            List<Product> products = (List<Product>) request.getAttribute("products");
            for (Product product : products) {
        %>
        <div class="col-md-4">
            <div class="card">

                <img src=".<%=product.getImage()%>" class="card-img-top" alt="Sản phẩm 1"
                     style="width: 100%; height: 250px">
                <div class="card-body">
                    <h5 class="card-title"><%=product.getName()%></h5>
                    <p class="card-text"><%=product.getDescription()%></p>
                    <p class="card-text"><strong>Danh mục:</strong><%=product.getCategory()%></p>
                </div>
                <a href="./delete?id=<%= product.getId() %>" class="btn btn-warning" role="button">Delete</a>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>

<!-- Footer -->
<!-- Footer -->
<footer class="bg-dark text-white p-3" style="position: fixed;bottom: 0; width: 100%; z-index: 1;">
    <div class="container">
        <p class="text-center">© 2023 Website của bạn. Tất cả quyền được bảo lưu.</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>