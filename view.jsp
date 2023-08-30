
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Reminder</title>  
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
        </style>
    </head>
    <body >
        <table width="1200px" align="center" border="2">
                        <tr>
                            <th colspan="6">
                            <h1><b>View Your Reminders</b></h1>
                            </th>
                        </tr>
                        <tr>
                            <th>REMINDERDATE</th>
                            <th>REMINDERSUBJECTS</th>
                            <th>REMINDEREMAIL</th>
                            <th>REMINDERCONTACTNO</th>
                            <th>REMINDERSMSNO</th>
                            <th>DESCRIPTION</th>
                        </tr>
        <%
                    
                        Connection con=null;
                        Statement st;
                        try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","saurabhmi");
                            String sql="select * from  SetReminder";
                            st=con.createStatement();
                            ResultSet res=st.executeQuery(sql);
                            while(res.next()){
                    %>
                    <tr>
                        <td>
                    <%
                                out.println(res.getString("REMINDERDATE"));
                    %>      </td>   <td>
                    <%
                                out.println(res.getString("REMINDERSUBJECTS"));
                    %>      </td>    <td>   
                    <%
                                out.println(res.getString("REMINDEREMAIL"));
                    %>      </td>    <td>
                    <%
                                out.println(res.getLong("REMINDERCONTACTNO"));
                    %>      </td>    <td>   
                    <%
                                out.println(res.getLong("REMINDERSMSNO"));
                    %>      </td>    <td>
                    <%
                                out.println(res.getString("DESCRIPTION"));
                    %>      </td> </tr>
                    <%    
                            }
                        
                            con.close();
                            
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    window.location.href = "home.jsp";
                                </script>
                    <%
                        }
                        
                    %>
        </table>
    </body>
</html>
