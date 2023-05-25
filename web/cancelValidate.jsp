<%-- 
    Document   : cancelValidate
    Created on : 28-Apr-2023, 11:03:52 pm
    Author     : itzch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
         try{  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003"); 
  
             PreparedStatement stmt=con.prepareStatement("delete from bookings where Phone=?;");  
                
             stmt.setString(1,request.getParameter("phone"));
             
  
             int i=stmt.executeUpdate();  
             
             if(i>0){   
                response.sendRedirect("LandingPageOne.jsp");
            }else{
                response.sendRedirect("cancel2.html");
            }
                
             con.close();
             stmt.close();
         }catch(Exception e){ 
             out.println(e);
         }  
    
             
        %>
    </body>
</html>
