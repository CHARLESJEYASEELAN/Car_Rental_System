<%-- 
    Document   : newjsp
    Created on : 25-Apr-2023, 10:28:54 pm
    Author     : itzch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validation</title>
    </head>
    <body>
        <% 
            try{  
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003"); 
  
                PreparedStatement stmt=con.prepareStatement("insert into Users values(?,?,?,?,?,?)");  
                
                stmt.setString(1,request.getParameter("name"));
                stmt.setString(2,request.getParameter("age"));
                stmt.setString(3,request.getParameter("dob"));
                stmt.setString(4,request.getParameter("phone"));
                stmt.setString(5,request.getParameter("uname"));
                stmt.setString(6,request.getParameter("pword"));
  
                int i=stmt.executeUpdate();  
                response.sendRedirect("LandingPageOne.jsp");
  
                con.close();  
  
            }catch(Exception e){ 
                out.println(e);
            }  
    
             
        %>
    </body>
</html>
