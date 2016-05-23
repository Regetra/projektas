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
        <th>id</th>
        <th>Vardas</th>
        <th>Pavardė</th>
        <th>Darbo stažas</th>
        <th>Egzaminuoja kategorijas</th>
      </tr>
      <c:forEach var="instructors" items="${instructors}">
        <tr>
          <td>${instructors.id}</td>
          <td>${instructors.vardas}</td>
          <td>${instructors.pavarde}</td>
          <td>${instructors.stazas}</td>
          <br />
          <td>${instructors.kategorijos}</td>
          <br />
        </tr>
      </c:forEach>
    </table>
  </font>
  </body>
  </html>
  <font color="white">
    <p>Regetros instruktoriai</p>
  </font>
  <img src="http://s31.postimg.org/ydgtz1iez/8824863_Attractive_middle_aged_man_making_thumbs.jpg" width="200" height="240" alt="Regetra">
  <img src="http://s31.postimg.org/s9el7alx7/11721a381f6eff21b42e024c70cf4f3b.jpg" width="200" height="240" alt="Regetra">
  <img src="http://s31.postimg.org/yxh7ham4b/33fee7c54a21af3a7fc3368d1f80ce78.jpg" width="200" height="240" alt="Regetra">
  <img src=" http://s31.postimg.org/n99u0w9rv/Middle_aged_man.jpg" width="260" height="240" alt="Regetra">
  <div align="right">
    <font color="white">
      <footer>
        <p>Sistema kurta IF 4-14 studentų</p>
        <p>2016m.</p>
      </footer>
    </font>
  </div>
</customtags:pageTemplate>