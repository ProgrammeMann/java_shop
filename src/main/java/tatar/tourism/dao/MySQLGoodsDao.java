package tatar.tourism.dao;

import tatar.tourism.pojo.ExcursionPlan;
import tatar.tourism.pojo.ExcursionTrip;
import tatar.tourism.pojo.Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by programmemann on 25.10.16.
 */
public class MySQLGoodsDao extends MySqlDao implements GoodsDao{
    @Override
    public void create(Goods goods) {
        Connection con =getConnection();
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement("INSERT INTO goods "
                    + "(name_goods, description_goods, price_goods, images_goods)"
                    + "VALUES(?,?,?,?)");
            stmt.setString(1, goods.getName());
            stmt.setString(2, goods.getDescriptions());
            stmt.setInt(3,goods.getPrice());
            stmt.setObject(4, goods.getImage());
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public Goods get(int key) {
        String sql = "SELECT * FROM goods where id_goods=?";
        Connection con = getConnection();
        PreparedStatement stm = null;
        Goods goods = new Goods();
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, key);
            ResultSet rs = stm.executeQuery();
            while (rs.next()){
                goods.setId(rs.getInt("id_goods"));
                goods.setName(rs.getString("name_goods"));
                goods.setPrice(rs.getInt("price_goods"));
                goods.setDescriptions(rs.getString("description_goods"));
                goods.setImage(rs.getString("images_goods"));
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
        return goods;
    }

    @Override
    public void delete(Goods goods) {
//TODO: Сделать удаление продуктов
    }

    @Override
    public List<Goods> getAll() {
        String sql = "SELECT * FROM goods;";
        List<Goods> list = new ArrayList<Goods>();
        Connection con =getConnection();
        PreparedStatement stm = null;

        try {
            stm = con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            Goods goods;
            while (rs.next()) {
                goods = new Goods();
                goods.setId(rs.getInt("id_goods"));
                goods.setName(rs.getString("name_goods"));
                goods.setPrice(rs.getInt("price_goods"));
                goods.setDescriptions(rs.getString("description_goods"));
                goods.setImage(rs.getString("images_goods"));
                list.add(goods)
;            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
