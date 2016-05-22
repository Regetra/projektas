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

        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration</title>
        </head>
        <body>
        <form method="post" action="/regis/">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                    <tr>
                        <th colspan="2">Įveskite savo duomenis</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>Vardas</td>
                        <td><input type="text" name="vardas" value="" /></td>
                    </tr>
                    <tr>
                        <td>Pavardė</td>
                        <td><input type="text" name="pavarde" value="" /></td>
                    </tr>
                    <tr>
                        <td>Amžius</td>
                        <td><input type="text" name="amzius" value="" /></td>
                    </tr>
                    <tr>
                        <td>Asmens Kodas</td>
                        <td><input type="text" name="amensKodas" value="" /></td>
                    </tr>

                    <tr>
                        <td>Praktinio data</td>
                        <td><input type="date" name="praktinioData" value="" /></td>
                    </tr>

                    <tr>
                        <td>Teorinio išlaikymo data</td>
                        <td><input type="date" name="teorinioIslaikymoData" value="" /></td>
                    </tr>
                    <tr>

                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>

                        </tr>

                    </tbody>
                </table>
            </center>
        </form>
        </body>



    


    </html>
    </body>
  








    <div align="right">
        <font color="white">

            <footer>
                <p>Sistema kurta IF 4-14 studentų</p>
                <p>2016m.</p>
            </footer>
        </font>
    </div>
</customtags:pageTemplate>
