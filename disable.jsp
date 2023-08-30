<%-- 
    Document   : disable
    Created on : Aug 20, 2023, 10:42:06 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Disable Reminder</title>  
    </head>
    <body >
        <h1></h1>
        <form method="post" action="" id="myform">
            <table width="600px" align="center" border="2">
                <tr>
                    <td ><b>Reminder Date</b>  </td>
                    <td ><input type="text" name="date"/></td>
                </tr>
                <tr>
                    <td rowspan="1"><b>Subjects</b></td>
                    <td><input type="text" name="sub"></td>
                </tr>
                <tr >
                    <td rowspan="1"><b>Email</b> </td>
                    <td><input type="email" minlength="8" name="t1"/></td>
                </tr> 
                <tr >
                    <td rowspan="1"><b>Phone NO</b></td>
                    <td colspan="2"><input type="text" name="t2"/></td>
                </tr>
                <tr height="20px">
                    <td ><b>ReminderSMSNo</b></td>
                    <td><input type="text" name="t3" minlength="8" required/></td>
                </tr>
                
                <tr align="center">
                    <br>
                    <td colspan="2"><input type="submit" value=" Reminder" name="b1"/>
                       
                    </td>
                </tr>
                </table>
            </form>
                    <%
                        if(request.getParameter("b1")!=null){
                            try{
                            String date=request.getParameter("date");
                            String subjects=request.getParameter("sub");
                            String email=request.getParameter("t1");
                            long phoneno=Long.parseLong(request.getParameter("t2"));
                            
                            int ReminderSMSNo=Integer.parseInt(request.getParameter("t3"));
                            
                        Connection con=null;
                        Statement st;
                        
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","saurabhmi");
                            String sql="insert into SetReminder values('" + date + "','" + subjects + "','" + email + "'," + phoneno + "," + ReminderSMSNo + ")";
                            st=con.createStatement();
                            int res=st.executeUpdate(sql);
                            if(res!=0){
                    %>
                                <script>
                                    alert("Set Successfully");
                                    open("home.jsp");
                                </script>
                    <%
                                }else{
                                    out.println("doesnot set");
                                }
                            
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    open("home.jsp");
                                </script>
                    <%
                            }
                        }
                        
                    %>
    </body>
</html>
