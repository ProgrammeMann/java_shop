package tatar.tourism.dao;

import tatar.tourism.pojo.ExcursionTrip;
import tatar.tourism.pojo.Goods;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by programmemann on 25.10.16.
 */
public interface GoodsDao {
    //    создает новый товар
    public void create(Goods goods);

    //  возвращает товар по ключу
    public Goods get(int key);

    //    удаляет товары
    public void delete(Goods goods);

//    выводит все товары
    public List<Goods> getAll() throws SQLException;

    }
