package dao;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDAO{
    SQLConnection sqlConnection = new SQLConnection();
    private String DISPLAY_ALL = "select * from product";
    private String ADD_PRODUCT = "insert into product(id, name, price, quantity, color, category) values(?,?,?,?,?,?)";
    private String FIND_BY_ID = "select * from product where id = ?";
    private String EDIT_PRODUCT = "update product set name = ?, price = ?, quantity = ?, color = ?, category = ? where id = ?";
    private String DELETE_PRODUCT = "delete from product where id = ?";
    private String SEARCH_PRODUCT = "select * from product where name like ?";

    @Override
    public List<Product> findAll() throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(DISPLAY_ALL);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String category = resultSet.getString("category");
            products.add(new Product(id, name, price, quantity, color, category));
        }
        return products;
    }

    @Override
    public Product findById(int id) throws SQLException {
        Product product = null;
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            String name = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String category = resultSet.getString("category");
            product = new Product(id, name, price, quantity, color, category);
        }
        return product;
    }

    @Override
    public void add(Product product) throws SQLException {
        Connection connection = sqlConnection.getConnection();
        PreparedStatement preparedStatement  = connection.prepareStatement(ADD_PRODUCT);
        preparedStatement.setInt(1, product.getId());
        preparedStatement.setString(2,product.getName());
        preparedStatement.setInt(3, product.getPrice());
        preparedStatement.setInt(4, product.getQuantity());
        preparedStatement.setString(5,product.getColor());
        preparedStatement.setString(6,product.getCategory());
        preparedStatement.executeUpdate();
    }

    @Override
    public boolean edit(Product product) throws SQLException {
        boolean rowUpdated;
        Connection connection  = sqlConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement(EDIT_PRODUCT);
        statement.setString(1, product.getName());
        statement.setInt(2, product.getPrice());
        statement.setInt(3, product.getQuantity());
        statement.setString(4, product.getColor());
        statement.setString(5, product.getCategory());
        statement.setInt(6, product.getId());
        rowUpdated = statement.executeUpdate()>0;
        return rowUpdated;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        boolean rowDeleted;
        Connection connection = sqlConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT);
        statement.setInt(1, id);
        rowDeleted = statement.executeUpdate()>0;

        return rowDeleted;
    }

    @Override
    public List<Product> seach(String name) throws SQLException {
        List<Product> products = new ArrayList<>();
        Connection connection  = sqlConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_PRODUCT);
        preparedStatement.setString(1, "%"+name+"%");
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            int id = resultSet.getInt("id");
            String name1 = resultSet.getString("name");
            int price = resultSet.getInt("price");
            int quantity = resultSet.getInt("quantity");
            String color = resultSet.getString("color");
            String category = resultSet.getString("category");
            products.add(new Product(id, name1, price,quantity, color, category));

        }
        return products;
    }
}
