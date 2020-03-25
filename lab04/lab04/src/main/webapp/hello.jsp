<%-- 
    Document   : hello.jsp
    Created on : 17 mar 2020, 10:39:48
    Author     : Gathaspar96
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <h1>Cześć, <c:out value="${m1.firstName}"/>!</h1> <%-- wypisuje tylko text --%>
        <h1>Witaj, ${m1.firstName} ${m1.lastName}, <a href="mailto:${m1.emailAddress}">${m1.emailAddress}</a></h1> <%-- wypisuje to co jest w znaczniku po przeanalizowaniu --%>
        
        
        <c:forEach items="${dniTygodnia}" var="dzien">
        <p>
            ${dzien}
        </p>
        </c:forEach>
        
        <h1>Cześć, ${m1.firstName}!</h1><%-- w tym przypadku działa to w taki sam sposób--%>
        <h1>Cześć, <c:out value="${m1.firstName}"/>!</h1><%-- w tym przypadku działa to w taki sam sposób--%>
        
        <h1>Cześć, <span style='color: pink'>Piotr</span></h1><%-- w tym przypadku interpretowany jest kod--%>
        <h1>Cześć, <c:out value="<span style='color: pink'>Piotr</span>"/>!</h1><%-- tutaj tekst interpretowany jest jako tekst a nie jak fragment kodu--%>
        
        <span style='color: pink'>Piotr</span><%-- wyswietli sie rózowy Piotr--%>

        <script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script><%-- wyswietla komunikat o danej treści--%>
       
        <h1>Cześć, <script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script></h1><%-- w tym przypadku interpretowany jest kod--%>
        <h1>Cześć, <c:out value="<script>alert('Jestem zlym hackerem i zaraz cie zjem!');</script>"/>!</h1><%-- tutaj tekst interpretowany jest jako tekst a nie jak fragment kodu--%>
    
    </body>
</html>