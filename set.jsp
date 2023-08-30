<%-- 
    Document   : set
    Created on : Aug 20, 2023, 10:35:32 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Set Reminder</title>  
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
            }
        </style>
    </head>
    <body >
        <h1></h1>
        <form method="post" action="" id="myform">
            <table width="1000px" align="center" border="2">
                <tr>
                    <th colspan="2">
                        <h1><b>Set Reminder</b></h1>
                    </th>
                </tr>
                <tr>
                    <td ><b>Select a Date : </b>  </td>
                    <td ><input type="date" name="date"/></td>
                </tr>
                <tr>
                    <td rowspan="1"><b>Subjects</b></td>
                    <td><input type="text" name="sub"></td>
                </tr>
                <tr>
                    <td rowspan="1"><b>Add description : </b></td>
                    <td><textarea rows="8" cols="50" name="desc"></textarea></td>
                </tr>
                <tr >
                    <td rowspan="1"><b>Email Address : </b> </td>
                    <td><input type="email" name="t1"/></td>
                </tr> 
                <tr >
                    <td rowspan="1"><b>Contact NO : </b></td>
                    <td colspan="2"><input type="text" name="t2"/></td>
                </tr>
                <tr height="20px">
                    <td ><b>SMS No : </b></td>
                    <td><input type="text" name="t3" required/></td>
                </tr>
                
                <tr align="center">
                    <br>
                    <td colspan="2"><input type="submit" value="Set Reminder" name="b1" id="butt"/>
                       
                    </td>
                </tr>
                </table>
            </form>
                    <%
                        if(request.getParameter("b1")!=null){
                            String date=request.getParameter("date");
                            String subjects=request.getParameter("sub");
                            String email=request.getParameter("t1");
                            long phoneno=Long.parseLong(request.getParameter("t2"));
                            String desc = request.getParameter("desc");
                            long ReminderSMSNo=Long.parseLong(request.getParameter("t3"));
                            
                        Connection con=null;
                        Statement st;
                        try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","saurabhmi");
                            String sql = "insert into SetReminder values('" + date + "','" + subjects + "','" + email + "'," + phoneno + "," + ReminderSMSNo + ", '" + desc + "')";
                            st=con.createStatement();
                            int res= st.executeUpdate(sql);
                            if(res!=0){
                    %>
                                <script>
                                    alert("Set Successfully");
                                    window.location.href = "home.jsp";
                                </script>
                    <%
                                }else{
                                    out.println("doesnot set");
                                }
                            
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    window.location.href = "home.jsp";
                                </script>
                    <%
                            }
                        }
                        
                    %>
    </body>
</html>
