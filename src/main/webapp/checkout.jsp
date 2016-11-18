<%--
  Created by IntelliJ IDEA.
  User: programmemann
  Date: 10.11.16
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/><html>
<head>
    <title>Checkout</title>
</head>
<body>

<h2>Укажите свою актуальную информацию</h2>


<form action="checkout" method="post" >
    <div class="form-group">
        <label class="col-sm-2 control-label">Адрес:</label>
        <div class="col-sm-10">
            <input type="text" name="adress_buer" size="25" class="form-control"
                   placeholder="Введите адрес доставки">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Телефон</label>
        <div class="col-sm-10">
            <input type="number" name="phone_buyer" size="25" class="form-control"
                   placeholder="Ваш контактный телефон">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Дополнительные комментарии</label>
        <div class="col-sm-10">
            <input type="text" name="comment_buyer" size="25" class="form-control"
                   placeholder="Комментарии">
        </div>
    </div>
    <button class="btn btn-default" id="buttons" role="button" type="submit"  >Заказать!</button>
</form>





</body>
</html>
