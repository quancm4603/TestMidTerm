package com.quancm.testmidterm.daos;

import com.quancm.testmidterm.models.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {

    private String jdbcURL = "jdbc:mysql://localhost:3306/test_mid_term";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";

    // Database connection
    private Connection connection;

    public ProductDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    // Thêm sản phẩm
    public void addProduct(Product product) {
        String query = "INSERT INTO Products (name, description, image, category) VALUES (?, ?, ?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, product.getName());
            statement.setString(2, product.getDescription());
            statement.setString(3, product.getImage());
            statement.setString(4, product.getCategory());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Cập nhật thông tin sản phẩm
    public void updateProduct(Product product) {
        String query = "UPDATE Products SET name=?, description=?, image=?, category=?, created_at=? WHERE id=?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, product.getName());
            statement.setString(2, product.getDescription());
            statement.setString(3, product.getImage());
            statement.setString(4, product.getCategory());
            statement.setTimestamp(5, product.getCreated_at());
            statement.setInt(6, product.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Lấy thông tin sản phẩm theo ID
    public Product getProductById(int id) {
        String query = "SELECT * FROM Products WHERE id = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);

            ResultSet result = statement.executeQuery();
            if (result.next()) {
                return extractProductFromResultSet(result);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    // Xóa sản phẩm theo ID
    public void deleteProduct(int id) {
        String query = "DELETE FROM Products WHERE id = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Lấy danh sách tất cả sản phẩm
    public List<Product> listAllProducts() {
        String query = "SELECT * FROM Products";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                products.add(extractProductFromResultSet(result));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    // Phương thức hỗ trợ để chuyển dữ liệu từ ResultSet thành đối tượng Product
    private Product extractProductFromResultSet(ResultSet result) throws SQLException {
        Product product = new Product();
        product.setId(result.getInt("id"));
        product.setName(result.getString("name"));
        product.setDescription(result.getString("description"));
        product.setImage(result.getString("image"));
        product.setCategory(result.getString("category"));
        product.setCreated_at(result.getTimestamp("created_at"));

        return product;
    }

    // Tìm kiếm sản phẩm theo từ khóa trong tên hoặc mô tả
    public List<Product> searchProductByKeyword(String keyword) {
        String query = "SELECT * FROM Products WHERE name LIKE ? OR description LIKE ?";
        List<Product> products = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            // Sử dụng % để tìm kiếm các sản phẩm chứa keyword trong tên hoặc mô tả
            String searchKeyword = "%" + keyword + "%";
            statement.setString(1, searchKeyword);
            statement.setString(2, searchKeyword);

            ResultSet result = statement.executeQuery();

            while (result.next()) {
                products.add(extractProductFromResultSet(result));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }





}
