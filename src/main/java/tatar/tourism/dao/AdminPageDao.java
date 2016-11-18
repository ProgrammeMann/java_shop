package tatar.tourism.dao;

import tatar.tourism.pojo.AdminPage;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by programmemann on 12.11.16.
 */
public interface AdminPageDao {
    public AdminPage get(int key);

    public List<AdminPage> getAll() throws SQLException;

    public void delete(AdminPage adminPage);

    public void create(AdminPage adminPage);

    public void update(AdminPage adminPage);
}
