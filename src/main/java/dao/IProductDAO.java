package dao;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductDAO {
    public List<Product> findAll() throws SQLException;
    public Product findById(int id) throws SQLException;
    public void add(Product product) throws SQLException;
    public boolean edit(Product product) throws SQLException;
    public boolean delete(int id) throws SQLException;
    public List<Product> seach(String name) throws SQLException;
}
