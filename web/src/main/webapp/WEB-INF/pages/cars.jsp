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
            <th>Markė</th>
            <th>Modelis</th>
            <th>Kategorijos id</th>
        </tr>

        <c:forEach var="cars" items="${cars}" >
        <tr>
           <td>${cars.marke}</td>
            <td>${cars.modelis}</td>
            <td>
                <span var="car" item="gr : ${cars.gr}">
					<span th:text="${gr.pavadinimas}"/><th:block th:if="${!iterStat.last}">,</th:block>
				</span>
            </td> <br />
        </tr>
        </c:forEach>


    </table>

    </font>
    </body>
    </html>

    <font color="white"> <p>Regetros automobiliai</p></font>


    <img src="http://s31.postimg.org/v6xengxh7/img560678.jpg" width="300" height="240" alt="Regetra">

    <img src="  http://s31.postimg.org/67bktdwmz/regitra_62940830.jpg" width="300" height="240" alt="Regetra">

    <img src="http://s31.postimg.org/xvu36jb7f/Suzuki_GS1000.jpg" width="300" height="240" alt="Regetra">

    <img src="http://s31.postimg.org/mml4goeij/nuo_siu_metu_sausio_19_dienos_isigalios_pokyciai.jpg" width="300" height="240" alt="Regetra">

    <img src="http://s31.postimg.org/m2kc2l6d7/autobusas.jpg" width="300" height="240" alt="Regetra">

    <div align="right">
        <font color="white">

    <footer>
        <p>Sistema kurta IF 4-14 studentų</p>
    </footer>
            </font>
    </div>
</customtags:pageTemplate>


