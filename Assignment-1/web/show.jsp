<%-- 
    Document   : show
    Created on : Nov 18, 2020, 2:12:15 AM
    Author     : Ahmed Ramadan Abdul Rashid Ali
    ID         : 20170019
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplication Table - Dynamic JSP</title>
    </head>
    <body>
        <h3>Thanks for using Mini-Multiplication Table</h3>
        <%
            String counter = request.getParameter("counter");
            int c = Integer.parseInt(counter);

        %>
        <table border="1">


            <% for (int i = 1; i <= c; i++) {%>
            <% if (i == 1) {%>
            <tr>
                <td style="background-color:red;color: white;"><% out.print("Multiply");%></td>
                <% for (int k = 1; k <= c; k++) {%>
                <td style="background-color:blue;color: white;"><% out.print(k);%></td>
                <%}%>

                <%}%>
            </tr>
            <tr>
                <% for (int j = 1; j <= c; j++) {%>


                <% if (j == 1) {%>
                <td style="background-color:blue;color: white;"><% out.print(i);%></td>
                <%}%>

                <% if (j == i) {%>
                <td style="background-color:red;color: white;"><% out.print(i * j);%></td>
                <%} else {  %>
                <td><% out.print(i * j);%></td>
                <%}%>

                <%}%>
            </tr>
            <%}%>
        </table>
        <br>
        <form action="index.html" method="post">
            <input type="submit" value="back">
        </form>

    </body>
</html>
