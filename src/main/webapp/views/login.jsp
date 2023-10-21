<%--
  Created by IntelliJ IDEA.
  User: caomi
  Date: 10/21/2023
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
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
    <a class="navbar-brand" href="./">Trang chủ</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.html">Sản phẩm <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="form.html">Tạo mới sản phẩm</a>
            </li>
        </ul>
    </div>

</nav>

<!-- Body: Trang Đăng Nhập -->
<div class="container mt-4">
    <h1>Đăng Nhập</h1>
    <form method="post">
        <div class="form-group">
            <label for="email">Email</label>
            <input name="email" type="email" class="form-control" id="email" placeholder="Nhập email">
        </div>
        <div class="form-group">
            <label for="password">Mật khẩu</label>
            <input name="password" type="password" class="form-control" id="password" placeholder="Nhập mật khẩu">
        </div>
        <button type="submit" class="btn btn-primary">Đăng Nhập</button>
    </form>
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
