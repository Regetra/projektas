<%@ page import ="java.sql.*" %>
<%
    String vardas = request.getParameter("vardas");
    String pavarde = request.getParameter("pavarde");
    Integer asmens_kodas = (Integer)request.getAttribute("asmensKodas");
    String amzius = request.getParameter("amzius");
    Date praktinioData = (Date)request.getAttribute("praktinioData");
    Date teorinioIslaikymoData=(Date)request.getAttribute("teorinioIslaikymoData");
    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/regetra",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int x=1;
    int amzius2=Integer.parseInt(amzius);
    int i = st.executeUpdate("INSERT INTO `klientas`(`VairavimoEgzaminas`, `Vardas`, `Amzius`, `Pavarde`, `AsmensKodas`, `PraktinioData`, `TeorinioIslaikymoData`) VALUES ('1','"+vardas+"','"+amzius2+"','"+pavarde+"',10,'2010-01-01','2010-01-01')");
    if (i > 0) {
        x=x+1;
        // session.setAttribute("userid", asmens_kodas);
        response.sendRedirect("/welcome/");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("/registration");
    }
%>