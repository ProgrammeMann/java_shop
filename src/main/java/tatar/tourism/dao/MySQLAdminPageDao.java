package tatar.tourism.dao;

import tatar.tourism.pojo.AdminPage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by programmemann on 12.11.16.
 */
public class MySQLAdminPageDao extends MySqlDao implements AdminPageDao {
    @Override
    public AdminPage get(int key) {
        String sql = "SELECT * FROM shipping_records where id_delivery=?";
        Connection con = getConnection();
        PreparedStatement stm = null;
        AdminPage adminPage = new AdminPage();
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, key);
            ResultSet rs = stm.executeQuery();
            while (rs.next()){
                adminPage.setId_delivery(rs.getInt("id_delivery"));
                adminPage.setId_goods(rs.getInt("id_goods"));
                adminPage.setAdress(rs.getString("adress_buer"));
                adminPage.setPhone(rs.getString("phone_buyer"));
                adminPage.setComment(rs.getString("comment_buyer"));
                adminPage.setDone(rs.getString("done_delivery"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                stm.close();
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return adminPage;
    }

    @Override
    public void delete(AdminPage adminPage) {

    }

    @Override
    public void create(AdminPage adminPage) {
        Connection con =getConnection();
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement("INSERT INTO shipping_records "
                    + "(id_goods, adress_buer, phone_buyer,  comment_buyer, done_delivery)"
                    + "VALUES(?,?,?,?,?)");
            stmt.setInt(1, adminPage.getId_goods());
            stmt.setString(2, adminPage.getAdress());
            stmt.setString(3, adminPage.getPhone());
            stmt.setString(4,adminPage.getComment());
            stmt.setString(5, adminPage.getDone());
            stmt.executeUpdate();
            stmt.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void update(AdminPage adminPage) {
        Connection con =getConnection();
        PreparedStatement stmt=null;
        try {
            stmt = con.prepareStatement("UPDATE shipping_records SET id_goods =  ?, adress_buer=?, phone_buyer=?, comment_buyer=?, done_delivery=? " +
                    "WHERE id_delivery =  ?");

            System.out.println(adminPage.getAdress());
            System.out.println(adminPage.getPhone());
            System.out.println(adminPage.getId_delivery());
            System.out.println(adminPage.getComment());
            System.out.println(adminPage.getDone());

            stmt.setInt(1, adminPage.getId_goods());
            stmt.setString(2, adminPage.getAdress());
            stmt.setString(3, adminPage.getPhone());
            stmt.setString(4, adminPage.getComment());
            stmt.setString(5, adminPage.getDone());
            stmt.setInt(6, adminPage.getId_delivery());
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
        public List<AdminPage> getAll() throws SQLException {
            String sql = "SELECT * FROM shipping_records;";
            List<AdminPage> list = new ArrayList<AdminPage>();
            Connection con =getConnection();
            PreparedStatement stm = null;

            try {
                stm = con.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                AdminPage adminPage;
                while (rs.next()) {
                    adminPage = new AdminPage();
                    adminPage.setId_delivery(rs.getInt("id_delivery"));
                    adminPage.setId_goods(rs.getInt("id_goods"));
                    adminPage.setAdress(rs.getString("adress_buer"));
                    adminPage.setPhone(rs.getString("phone_buyer"));
                    adminPage.setComment(rs.getString("comment_buyer"));
                    adminPage.setDone(rs.getString("done_delivery"));
                    list.add(adminPage);
                    }
            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    stm.close();
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            return list;
            }
        }
}
