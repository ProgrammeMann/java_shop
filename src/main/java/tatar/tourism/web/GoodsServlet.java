package tatar.tourism.web;


import tatar.tourism.dao.DaoFactory;
import tatar.tourism.dao.GoodsDao;
import tatar.tourism.pojo.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Logger;
//TODO: исправить это говнеецо
/**
 * Created by programmemann on 26.10.16.
 */
@WebServlet("/goods")
public class GoodsServlet extends HttpServlet {
    static Logger log = Logger.getLogger(String.valueOf(GoodsServlet.class));
    static GoodsDao goodsDao = DaoFactory.getDAOFactory(1).getGoods();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        List<Goods> goodsList = null;
        try {
            goodsList = goodsDao.getAll();
        } catch (SQLException e) {
                e.printStackTrace();
        }
        req.setAttribute("goods", goodsList);
        getServletContext().getRequestDispatcher("/goods.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        List<Goods> goodsList = null;
        try {
            goodsList = goodsDao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("goods", goodsList);
        getServletContext().getRequestDispatcher("/goods.jsp").forward(req, resp);

    }
}
