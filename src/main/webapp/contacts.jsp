<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n.UsersBundle"/>
<html>
<head>
    <title>Contacts</title>
    <style>
       .layer1 {
       text-align: right;
        float: right; /* Обтекание по правому краю */
        border: 1px solid black; /* Параметры рамки */
        padding: 10px; /* Поля вокруг текста */
        margin-right: 20px; /* Отступ справа */
        width: 40%; /* Ширина блока */
       }
      </style>
</head>
<body>
<div class="col-md-6">
    <h2>Наши контакты:</h2>
    <h4>Телефон:</h4>
    <a href="tel:01234567890" >8-800-555-35-35</a>
    <h4>Почтовый ящик:</h4>
    <a href="mailto:bugor2896@gmail.com">bugor2896@gmail.com</a>
    <h4>Режим работы:</h4>
    <a>8:00 - 20--:00</a>
    <h6>Каждый божий день</h6>
    <h4>Адрес:</h4>
    <a>Россия, г. Казань, Кремлевская 35</a>
    <div></div>
</div>
<div class="col-md-6">
         <!--Гугл карты-->
         <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2243.04744801386!2d49.122275!3d55.792414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x415ead1154a251b7%3A0x9d2bb4764b144bf0!2z0YPQuy4g0JrRgNC10LzQu9C10LLRgdC60LDRjywgMzUsINCa0LDQt9Cw0L3RjCwg0KDQtdGB0L8uINCi0LDRgtCw0YDRgdGC0LDQvSwgNDIwMTEx!5e0!3m2!1sru!2sru!4v1477636108408" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>


</body>
</html>