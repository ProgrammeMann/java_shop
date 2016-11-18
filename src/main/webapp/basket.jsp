<%--
  Created by IntelliJ IDEA.
  User: programmemann
  Date: 09.11.16
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <title>Basket</title>
</head>
<body>
    <h1>Ваши заказы:</h1>
    <table class="table table-bordered table-striped">
        <tr>
            <th><fmt:message key="goods.label.name_goods" /></th>
            <th><fmt:message key="goods.label.photo_goods" /></th>
            <th><fmt:message key="goods.label.price_goods" /></th>
        </tr>

        <c:forEach items="${goodsInBasket}" var="good">

            <tr>

                <td>${good.name}
                    <form method="post" action="basket">
                        <input type="hidden" name="goodId" value="${good.id}">
                        <input type="hidden" name="delete">
                        <button class="btn btn-default"  role="button">Удалить из корзины</button>
                    </form>
                </td>
                <td> <img src="img/${good.image}"></td>
                <td>${good.price}</td>
            </tr>
        </c:forEach>
    </table>

    <a class="btn btn-default" id="buttons" role="button" href="/vazilon/checkout.jsp">Оформить заказ!</a>


</body>
</html>
