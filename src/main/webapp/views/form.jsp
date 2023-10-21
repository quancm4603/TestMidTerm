<%--
  Created by IntelliJ IDEA.
  User: caomi
  Date: 10/21/2023
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Website của bạn</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
</head>
<body>

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
<!-- Body: Form tạo sản phẩm -->
<div class="container mt-4">
    <h1>Tạo sản phẩm mới</h1>
    <form method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="name">Tên sản phẩm</label>
            <input name="name" type="text" class="form-control" id="name" placeholder="Nhập tên sản phẩm">
        </div>
        <div class="form-group">
            <label for="description">Mô tả</label>
            <textarea name="description" class="form-control" id="description" rows="3" placeholder="Nhập mô tả sản phẩm"></textarea>
        </div>
        <div class="form-group">
            <label for="category">Loại sản phẩm</label>
            <select name="category" class="form-control" id="category">
                <option value="loai1">Loại 1</option>
                <option value="loai2">Loại 2</option>
                <option value="loai3">Loại 3</option>
            </select>
        </div>
        <div class="form-group">
            <label for="image">Hình ảnh sản phẩm</label>
            <input name="image" type="file" class="form-control-file" id="image">
        </div>
        <button type="submit" class="btn btn-primary">Tạo sản phẩm</button>
    </form>
</div>



<!-- Footer -->
<!-- Footer -->
<footer class="bg-dark text-white p-3" style="position: fixed; bottom: 0; width: 100%;">
    <div class="container">
        <p class="text-center">© 2023 Website của bạn. Tất cả quyền được bảo lưu.</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
</body>
</html>
