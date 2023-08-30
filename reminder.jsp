<%-- 
    Document   : reminder
    Created on : Aug 20, 2023, 10:34:26 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome Here</title>
        <style>
            body{
                background-color: goldenrod;
            }
            table{
                background-color: yellow;
            }
            tr{
                height:50px;
                font-size: 20px;
            }
            #butt{
                width:100px;
                height:40px;
                margin-left:100px;
            }
        </style>
    </head>
    </head>
    <body>
        <script>
            function move(){
                open("login.jsp");
            }
        </script>
        <table border="2" width="800px" align="center">
            <tr >
                <th colspan="3">
                   <h1>
                       <i><b>Welcome to Reminder Application</b> </i> 
                   </h1>

                </th>
            </tr>
            <tr>
                <td>
                   Not a new User <input type="button" onclick="move()" value="Login here" id="butt">

                </td>
            </tr>
            <tr>
                <td>
                    New User ?  <a href="register.jsp">Register here</a>
                </td>
            </tr>
        </table>
    </body>
</html>
