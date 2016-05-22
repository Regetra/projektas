


            <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
    Neprisireginot<br/>
    <a href="/Reg/reg">Please Login</a>
            <%} else {
%>

            <body>
            <body background='https://pixabay.com/static/uploads/photo/2015/07/31/20/38/background-869586_960_720.png'>
    Welcome <%=session.getAttribute("userid")%> <%=session.getAttribute("userid2")%>
    <a href='logout'>Atsijungti</a>
    <div align="right">
        <font color="white">

            <footer>
                <p>Sistema kurta IF 4-14 studentų</p>
                <p>2016m.</p>
            </footer>
        </font>
    </div>
            </body>
            <%
    }
%>



    


  








