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
                <th>Darbuotojo id</th>
                <th>Vardas</th>
                <th>Pavardė</th>
                <th>Filialas</th>
            </tr>

            <c:forEach var="persons" items="${persons}">
                <tr>
                    <td>${persons.id}</td>
                    <td>${persons.vardas}</td>
                    <td>${persons.pavarde}</td>
                    <td>${persons.fili.miestas}</td><br />
                </tr>
            </c:forEach>


        </table>

    </font>
    </body>
    </html>

    <font color="white"> <p>Regetros personalas</p></font>


    <img src="http://www.custompersonnel.com/assets/img/HR_dept.png" />





    <div align="right">
        <font color="white">

            <footer>
                <p>Sistema kurta IF 4-14 studentų</p>
            </footer>
        </font>
    </div>
</customtags:pageTemplate>

