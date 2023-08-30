<%-- 
    Document   : login
    Created on : Aug 20, 2023, 10:39:28 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login  Form </title>
        <style>
            body{
                background-color: goldenrod;
            }
            table{
                background-color: yellow;
            }
            tr{
                height:50px;
            }
            #butt{
                width:100px;
                height:40px;
                float:right;
                margin-right:300px;
            }
        </style>
    </head>
    <body >
        <form method="post" action="" name="f1">
            <table width="1000px" align="center" border="2">
                <tr>
                    <th colspan="2">
                        <h1><b>Login Page</b></h1>
                    </th>
                </tr>
                <tr>
                    <td ><b>Username</b>  </td>
                    <td ><input type="text" name="u"/></td>
                </tr>
               
                <tr height="20px">
                    <td ><b>Password(8 characters minimum)</b></td>
                    <td><input type="password"  name="t1" minlength="8" required/></td>
                </tr>
                <tr height="20px">
                    <td colspan="2">
                        <input type="submit" value="Login" name="b1" id="butt"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                         <b>Don't Have an Account ?<b> <a href="register.jsp">SignUp Here</a>
                    </td>
                </tr>
            </table>
        </form>
        <%
        if (request.getParameter("b1") != null) {
            try {
                String uname = request.getParameter("u");
                String pswd = request.getParameter("t1");           
                Class.forName("oracle.jdbc.driver.OracleDriver");             
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "saurabhmi");               
                String sql = "SELECT unmae, password FROM Registration WHERE password = '" + pswd + "'";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                String un = null;
                String ps = null;                
                if (rs.next()) {
                    un = rs.getString("unmae");
                    ps = rs.getString("password");
                }              
                if (un.equals(uname) && ps.equals(pswd)) {
        %>
                    <script>
                        alert("Login Successful");
                        window.location.href = "home.jsp";
                    </script>
        <%
                } else{
        %>
                    <script>
                        alert("Wrong Credential");
                    </script>
        <%
                }
            } catch (Exception e) {
        %>
                <script>
                    alert("Something went wrong");
                </script>
        <%
            }
        }
        %>
    </body>
</html>