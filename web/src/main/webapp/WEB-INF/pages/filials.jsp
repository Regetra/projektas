<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                <th>Filialo id</th>
                <th>Miestas</th>
                <th>Adresas</th>
            </tr>

            <c:forEach var="filialas" items="${filialas}">
                <tr>
                    <td>${filialas.id}</td>
                    <td>${filialas.miestas}</td>
                    <td>${filialas.adresas}</td> <br />
                </tr>
            </c:forEach>


        </table>

    </font>
    </body>
    </html>

    <font color="white"> <p>Regetros filialai</p></font>


    <img src="http://www.part.lt/img/c3b40f9f36fa09091f5f4fe0a98a4381283.jpg" width="400" height="340" />

    <img src="http://www.part.lt/img/e70bf1a99019adbb7b8c1847f47fe818957.JPG" width="400" height="340" />

    <img src="http://www.part.lt/img/49e544a0e3f1f659096323e088b9ea1d776.jpg" width="400" height="240" />


    <div align="right">
        <font color="white">

            <footer>
                <p>Sistema kurta IF 4-14 studentų</p>
                <p>2016m.</p>
            </footer>
        </font>
    </div>

</customtags:pageTemplate>

