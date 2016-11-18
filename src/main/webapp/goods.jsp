<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>

<html>
<head>
    <title>Catalog</title>
</head>
<body>


<table class="table table-bordered table-striped">
        <a role="button" class="btn btn-default btn-lg"   id="fixed_button" href="/vazilon/basket"><span class="glyphicon glyphicon-shopping-cart"></span>К корзине</a>

    <tr>
        <th><fmt:message key="goods.label.name_goods" /></th>
        <th><fmt:message key="goods.label.photo_goods" /></th>
        <th><fmt:message key="goods.label.description_goods" /></th>
        <th><fmt:message key="goods.label.price_goods" /></th>
    </tr>

        <c:forEach items="${goods}" var="good" varStatus="goodsLoopCount">

        <tr>
            <td>${good.name}
                <form method="post" action="basket">
                        <input type="hidden" name="goodId" value="${good.id}">
                        <button class="btn btn-default" href="" role="button">Добавить в корзину</button>
                    </form>
                </td>
            <%--Ширина 378px, http://resizepiconline.com/--%>
                <td> <img src="img/${good.image}"></td>
                <td>${good.descriptions}</td>
                <td>${good.price}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>