package tatar.tourism.web;

import org.apache.log4j.Logger;
import tatar.tourism.dao.AdminPageDao;
import tatar.tourism.dao.DaoFactory;
import tatar.tourism.pojo.AdminPage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by programmemann on 13.11.16.
 */
@WebServlet("/adminPage")
public class AdminPageServlet extends HttpServlet {
    static Logger log = Logger.getLogger(UsersServlet.class);
    static AdminPageDao adminPageDao = DaoFactory.getDAOFactory(1).getAdminPage();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        List<AdminPage> adminList= null;
        try {
            adminList = adminPageDao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        log.debug("Admin list is got from the db");
        req.setAttribute("adminList",adminList);
//        req.setAttribute("sessionUser",req.getSession().getAttribute("user"));
        getServletContext().getRequestDispatcher("/adminPage.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        AdminPage adminPageCreate = new AdminPage();

        String idDelivery=req.getParameter("id_delivery");

        String idGoods=req.getParameter("id_goods");
        String adressBuyer=req.getParameter("adress_buer");
        String phoneBuyer=req.getParameter("phone_buyer");
        String commentBuyer=req.getParameter("comment_buyer");
        String doneDelivery=req.getParameter("done_delivery");
        if (idGoods != null)  adminPageCreate.setId_goods(Integer.parseInt(idGoods));
        if (adressBuyer!= null) adminPageCreate.setAdress(adressBuyer);
        if (phoneBuyer != null) adminPageCreate.setPhone(phoneBuyer);
        if (commentBuyer != null) adminPageCreate.setComment(commentBuyer);
        if (doneDelivery != null) adminPageCreate.setDone(doneDelivery);

        if (idDelivery!=null){
            adminPageCreate.setId_delivery(Integer.parseInt(idDelivery));

            adminPageDao.update(adminPageCreate);
        }else {

            adminPageDao.create(adminPageCreate);
        }




        List<AdminPage> adminList= null;
        try {
            adminList = adminPageDao.getAll();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        log.debug("User list is got from the db");
        req.setAttribute("adminList",adminList);
        getServletContext().getRequestDispatcher("/adminPage.jsp").forward(req, resp);




    }
}
