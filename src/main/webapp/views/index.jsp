<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
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
            <li class="nav-item">
                <a class="nav-link" href="login.html">Đăng xuất</a>
            </li>
        </ul>
    </div>
    <div class="ml-auto">
        <span class="navbar-text">Xin chào, <strong id="userName">Tên Người Dùng</strong></span>
    </div>
</nav>

<!-- Danh sách sản phẩm dạng card -->
<div class="container mt-4">
    <h1>Danh Sách Sản Phẩm</h1>

    <!-- Phần tìm kiếm -->
    <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm" id="searchInput">
        <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="searchButton">Tìm kiếm</button>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="card">

                <img src="https://blog.dktcdn.net/files/san-pham-moi.png" class="card-img-top" alt="Sản phẩm 1" style="width: 100%; height: 250px">
                <div class="card-body">
                    <h5 class="card-title">Sản phẩm 1</h5>
                    <p class="card-text">Mô tả ngắn về sản phẩm 1.</p>
                    <p class="card-text"><strong>Danh mục:</strong> Danh mục 5</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-danger" onclick="xoaSanPham(this)">Xóa</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img  style="width: 100%; height: 250px;" src="https://lh5.googleusercontent.com/xtuxVuJHa1855nFFlpV7vOs_k2iMDlfHydKOnmqQ7FAdUq3oSlUTo1o7HuiMncefhkl4Cdbp9jXBZRK2GmdyQbehSoN0g2E_ZKEXDmEtRbANDjMOs-OIrGt87AxY88w-ZzVKONkRqY7uXBa_-Q" class="card-img-top" alt="Sản phẩm 2">
                <div class="card-body">
                    <h5 class="card-title">Sản phẩm 2</h5>
                    <p class="card-text">Mô tả ngắn về sản phẩm 2.</p>
                    <p class="card-text"><strong>Danh mục:</strong> Danh mục 3</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-danger">Xóa</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img  style="width: 100%; height: 250px" src="https://mobiwork.vn/wp-content/uploads/2022/05/chien-luoc-marketing-cho-san-pham-moi-3.png.webp" class="card-img-top" alt="Sản phẩm 3">
                <div class="card-body">
                    <h5 class="card-title">Sản phẩm 3</h5>

                    <p class="card-text"><strong>Danh mục:</strong> Danh mục 2</p>
                    <p class="card-text">Mô tả ngắn về sản phẩm 3.</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-danger">Xóa</button>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img  style="width: 100%; height: 250px" src="https://mobiwork.vn/wp-content/uploads/2022/05/chien-luoc-marketing-cho-san-pham-moi-3.png.webp" class="card-img-top" alt="Sản phẩm 3">
                <div class="card-body">
                    <h5 class="card-title">Sản phẩm 3</h5>

                    <p class="card-text"><strong>Danh mục:</strong> Danh mục 2</p>
                    <p class="card-text">Mô tả ngắn về sản phẩm 3.</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-danger">Xóa</button>
                </div>
            </div>
        </div>
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