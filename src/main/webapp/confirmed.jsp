<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="i18n.UsersBundle" />

<html>
<head>
    <title><fmt:message key="confirmed.title" /></title>
</head>
<body>
<fmt:message key="confirmed.message" />
</body>
</html>
