<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="customtags" tagdir="/WEB-INF/tags" %>


<customtags:pageTemplate>
 <html>
 <head>
  <style>
   table, th, td {
    border: 2px solid blue;
   }
  </style>
 </head>
 <body>
 <body background='https://pixabay.com/static/uploads/photo/2015/07/31/20/38/background-869586_960_720.png'>
 <font color="white">
  <table>
   <tr>
    <th>Kategorijos id</th>
    <th>Pavadinimas</th>
    <th>Amžius</th>
    <th>Kategorijos aprašas</th>
   </tr>
   <c:forEach var="grupe" items="${grupes}">
    <tr>
     <td>${grupe.id}</td>
     <td>${grupe.pavadinimas}</td>
     <td>${grupe.amzius}</td>
     <td>${grupe.komentaras}</td>
    </tr>
   </c:forEach>
  </table>
 </font>
 <img src="http://www.part.lt/img/1e67a799ee41f6797bafd43c5e3e4e6a752.jpg"width="400" height="600" />
 </body>
 </html>
 <div align="right">
  <font color="white">
   <footer>
    <p>Sistema kurta IF 4-14 studentų</p>
    <p>2016m.</p>
   </footer>
  </font>
 </div>
</customtags:pageTemplate>
COPY TO CLIPBOARD	 SELECT ALL