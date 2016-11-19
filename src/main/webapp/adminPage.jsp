<%--
  Created by IntelliJ IDEA.
  User: programmemann
  Date: 12.11.16
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <title>Admin</title>
</head>
<body>
<table class="table table-bordered table-striped">
    <tr>
        <th><fmt:message key="goods.label.id_goods" /></th>
        <th><fmt:message key="goods.label.adress_buyer" /></th>
        <th><fmt:message key="goods.label.phone_buyer" /></th>
        <th><fmt:message key="goods.label.comment_buyer" /></th>
        <th><fmt:message key="goods.label.done_delivery" /></th>
        <th><fmt:message key="users.label.action" /></th>
    </tr>


    <c:forEach items="${adminList}" var="list">

        <tr>
            <form action="adminPage" method="post">
                <input type="hidden" value="${list.id_delivery}" name="id_delivery">
                <td>
                    <input type="text" name="id_goods" value="${list.id_goods}">
                </td>
                <td>
                    <input type="text" name="adress_buer" value="${list.adress}">
                </td>
                <td>
                    <input type="text" name="phone_buyer" value="${list.phone}">
                </td>
                <td>
                    <input type="text" name="comment_buyer" value="${list.comment}">
                </td>
                <td>
                    <input type="text" name="done_delivery" value="${list.done}">
                </td>
                <td><button type="submit" class="btn btn-success"><fmt:message key="plans.label.update"/></button></td>
            </form>
        </tr>
    </c:forEach>

</table>

<table class="table table-bordered table-striped">


<tr>

        <form action="adminPage" method="post">
            <td>
                <div>
                    <input type="number" name="id_goods" value="${list.id_goods}"
                           placeholder="id_goods">
                </div>
            </td>
            <td>
                <div>
                    <input type="text" name="adress_buer" value="${list.adress}"
                            placeholder="adress_buer">
                </div>
            </td>
            <td>
                <div>
                    <input type="number" name="phone_buyer" value="${list.phone}"
                           placeholder="phone_buyer">
                </div>
            </td>
            <td>
                <div>
                    <input type="text" name="comment_buyer" value="${list.comment}"
                           placeholder="comment_buyer">
                </div>
            </td>
            <td>
                <div>
                    <input type="text" name="done_delivery" value="${list.done}"
                           placeholder="done_delivery">
                </div>
            </td>
            <td>
                <button type="submit" class="btn btn-success"><fmt:message key="users.label.newDelivery"/></button>
            </td>
        </form>

    </tr>
    </table>
</body>
</html>
