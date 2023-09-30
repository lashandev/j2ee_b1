<%-- 
    Document   : Day1_1
    Created on : Sep 30, 2023, 1:45:27 PM
    Author     : lashan_chandika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>My Testing App</p>
        <p>My Testing App</p>
        <%
            String headers[] = {"First Name", "Middle Name", "Last Name","Action"};
            String button_ = "<input type='submit' value='View Me'>";
            String data[][] ={
                {"Nuwan", "Chamikara", "Silva", button_},
                {"Sadun", "Wasantha", "Perera", button_},
                {"Ruwan", "Kumara", "Silva", button_},
                {"Gayan", "Nilantha", "Godage", button_},
                {"Hashan", "Maduwantha", "Thilakarathne", button_},
            };
            
            out.write("<table border=1>");
            out.write("<tr>");
            for(String header: headers){
                out.write("<th>"+header+"</th>");
            }
            out.write("</tr>");
            
            for (String rows[] : data){
                int no = 0;
                out.write("<tr>");
                out.write("<form action='View.jsp'>");
                for (int index = 0; index <rows.length;index++){
                    String val = rows[index];
                    if(!val.contains("input")){
                        out.write("<td><input name='t"+(++no)+"' type='hidden' value='"+val+"'>"+val+"</td>");
                    }else {
                        out.write("<td>"+val+"</td>");
                    }
                }
                out.write("</form>");
                out.write("</tr>");
            }
            
            out.write("</table>");
            
            %>
    </body>
    
</html>
