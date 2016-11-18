package tatar.tourism.web;

import org.apache.log4j.Logger;
import tatar.tourism.dao.AdminPageDao;
import tatar.tourism.dao.DaoFactory;
import tatar.tourism.pojo.AdminPage;
import tatar.tourism.pojo.Basket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by programmemann on 14.11.16.
 */
@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    static Logger log = Logger.getLogger(UsersServlet.class);
    static AdminPageDao adminPageDao = DaoFactory.getDAOFactory(1).getAdminPage();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        getServletContext().getRequestDispatcher("/checkout.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session = req.getSession();
        Basket basket = (Basket) session.getAttribute("basket");
        AdminPage adminPageAutoCreate = new AdminPage();
        String adressBuyer=req.getParameter("adress_buer");
        String phoneBuyer=req.getParameter("phone_buyer");
        String commentBuyer=req.getParameter("comment_buyer");
        List<Integer> ids = basket.getGoods();

        for (Integer id: ids) {

            adminPageAutoCreate.setId_goods(id);

            if (adressBuyer!= null) adminPageAutoCreate.setAdress(adressBuyer);
            if (phoneBuyer != null) adminPageAutoCreate.setPhone(phoneBuyer);
            if (commentBuyer != null) adminPageAutoCreate.setComment(commentBuyer);
            adminPageAutoCreate.setDone("not done");

            adminPageDao.create(adminPageAutoCreate);
        }
        basket.dropBasket();//очищаем после передачи заказа в бд

        getServletContext().getRequestDispatcher("/endShopping.jsp").forward(req, resp);
    }
}
