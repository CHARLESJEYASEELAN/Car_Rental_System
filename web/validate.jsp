<%-- 
    Document   : validate
    Created on : 28-Apr-2023, 2:06:19 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Map.Entry"%>
<%@ page import="java.util.HashMap" %>
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
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003");
                PreparedStatement ps=conn.prepareStatement("select * from users where Username=? and Password=?");
               
                ps.setString(1,request.getParameter("Username"));
               
           
                ps.setString(2,request.getParameter("Password"));
                ResultSet rs = ps.executeQuery();
               
                if(rs.next()){
                    response.sendRedirect("LandingPageOne.jsp");
                }
                else{
                response.sendRedirect("loginPageJyos.html");
                }
            }catch(Exception e){
                out.println(e);
            }
           
                                       
        %>
    </body>
</html>