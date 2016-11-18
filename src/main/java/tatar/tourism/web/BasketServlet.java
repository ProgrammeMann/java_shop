package tatar.tourism.web;

import tatar.tourism.dao.DaoFactory;
import tatar.tourism.dao.GoodsDao;
import tatar.tourism.pojo.Basket;
import tatar.tourism.pojo.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by programmemann on 10.11.16.
 */
@WebServlet("/basket")
public class BasketServlet extends HttpServlet{
    static GoodsDao goodsDao = DaoFactory.getDAOFactory(1).getGoods();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("basket") != null)  {
            Basket basket = (Basket) session.getAttribute("basket");
            List<Integer> goodsId = basket.getGoods();
            if (goodsId.isEmpty()){
                getServletContext().getRequestDispatcher("/goods").forward(req, resp);
            }else {
                List<Goods> goods = new ArrayList<>();
                for (Integer id : goodsId) {
                    goods.add(goodsDao.get(id));
                }
                req.setAttribute("goodsInBasket", goods);
                getServletContext().getRequestDispatcher("/basket.jsp").forward(req, resp);

            }
        }else{
            getServletContext().getRequestDispatcher("/goods").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("basket") == null) {
            session.setAttribute("basket", new Basket());
        }
        Basket basket = (Basket) session.getAttribute("basket");
        String goodId = req.getParameter("goodId");

        if (req.getParameter("delete") == null) {

            basket.addGood(new Integer(goodId));
            session.setAttribute("basket", basket);
            getServletContext().getRequestDispatcher("/goods").forward(req, resp);
        }else{
            basket.deleteGood(new Integer(goodId));
            session.setAttribute("basket", basket);
            doGet(req,resp);
        }


    }

    }
