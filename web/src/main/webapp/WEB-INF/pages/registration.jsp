<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="customtags" tagdir="/WEB-INF/tags" %>
<customtags:pageTemplate>
    <!DOCTYPE html>
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registracija</title>
    </head>
    <form method="post" action="/login/">
        <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                <tr>
                    <th colspan="2">Login Here</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Vardas</td>
                    <td><input type="text" name="vardas" value="" /></td>
                </tr>
                <tr>
                    <td>Pavarde</td>
                    <td><input type="text" name="pavarde" value="" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login" /></td>
                    <td><input type="reset" value="Reset" /></td>
                </tr>
                <tr>
                    <td colspan="2">Jei dar neprisiregistravote <a href="reg"> <font color="white">Spauskite čia</font></a></td>
                </tr>
                </tbody>
            </table>
        </center>
    </form>
    </body>
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