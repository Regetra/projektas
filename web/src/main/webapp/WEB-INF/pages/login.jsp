    <%@ page import ="java.sql.*" %>
    <%
        String vardas = request.getParameter("vardas");
        String pavarde = request.getParameter("pavarde");
        Integer asmensKodas = (Integer)request.getAttribute("asmensKodas");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/regetra",
                "root", "");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from klientas where vardas='" + vardas + "' and pavarde='" + pavarde +"'");
        if (rs.next()) {
            session.setAttribute("userid", vardas);
            session.setAttribute("userid2", pavarde);
            response.sendRedirect("success");
            System.out.println("success");
        } else {
            response.sendRedirect("successs.jsp");
            System.out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    %>

