
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reminder Application </title>
        <script>
            function func(){
                open("reminder.jsp");
            }
        </script>
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
                width:60px;
                height:40px;
                margin-left:450px;
            }
        </style>
    </head>
    <body>
        <table border="2" align="center" width="1000px">
            <tr  >
                <td align="center">
                    <i><h3>Welcome to the Reminder Application</h3></h3></h3></i>
                <br>
                    <i><h6>Today is Friday ,18th Of February </h6></h3></h3></i>
                </td>
            </tr>
            <tr>
                <td align="center">
                   <a href="set.jsp">Set Reminder </a> 		
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="modifyrem.jsp"> Modify Reminder</a>
                </td>
            </tr>
                <tr>
                <td align="center">
                    <a href="disable.jsp">Disable Reminder</a> 	
                </td>
            </tr><tr>
                <td align="center">
                    <a href="delete.jsp">Delete Reminder</a>	
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="enable.jsp">Enable Reminder</a>  
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="view.jsp">View Your Reminders</a>	
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Logout" onclick="func()" id="butt" >
                </td>
            </tr>
        </table>
        
        
        
    </body>
</html>
