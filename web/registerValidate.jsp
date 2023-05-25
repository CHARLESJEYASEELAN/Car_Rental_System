<%-- 
    Document   : registerValidate.jsp
    Created on : 27-Apr-2023, 10:09:34 pm
    Author     : itzch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url("finalOneBackground.jpg");
                background-size: cover;
            }
            .mainDiv{
                background-color: rgba(255, 255, 255, 0.801);
                height: 550px;
                width: 85%;
                margin-left: 7%;
                margin-top: 7%;
                border: 1px solid black;
                border-radius: 10px;
            }
            h1{
                font-family: 'Poppins Medium';
                font-size: 37px;
            }
            table{
                margin-top: 3%;
                width: 55%;
            }
            .gridButtons {
                border: 0px solid black;
                display: grid;
                grid-gap: 8%;
                grid-template-columns: repeat(2, 30%);
                grid-auto-rows: 0fr;

                width: 730px;

                margin-top: 1.75%;
                margin-left: 30%;
                padding: 1%;

            }

            .feedBackButton {

                background-color: hsl(154, 59%, 51%);
                border-radius: 5px;
                color: white;
                font-family: 'Poppins';
                font-size: 16px;

                padding: 3%;
                transition-property: box-shadow, background-color;
                transition-timing-function: ease-in;
                transition-delay: 0s;
                transition-duration: 0.3s;
            }

            .feedBackButton:hover {
                background-color: hsl(155, 100%, 24%);
                box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            }

            .feedBackButton:focus {
                background-color: hsl(155, 60%, 19%);
            }
            .cancelButton {

                background-color: hsl(154, 59%, 51%);
                border-radius: 5px;
                color: white;
                font-family: 'Poppins';
                font-size: 16px;

                padding: 3%;
                transition-property: box-shadow, background-color;
                transition-timing-function: ease-in;
                transition-delay: 0s;
                transition-duration: 0.3s;
            }

            .cancelButton:hover {
                background-color: hsl(155, 100%, 24%);
                box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            }

            .cancelButton:focus {
                background-color: hsl(155, 60%, 19%);
            }
        </style>
    </head>
    <body>
        <% 
         try{  
             Class.forName("com.mysql.jdbc.Driver");
             Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003"); 
  
             PreparedStatement stmt=con.prepareStatement("insert into bookings values(?,?,?,?,?,?,?,?,?,?)");  
                
             stmt.setString(1,request.getParameter("fname"));
             stmt.setString(2,request.getParameter("lname"));
             stmt.setString(3,request.getParameter("phone"));
             stmt.setString(4,request.getParameter("emailAddress"));
             stmt.setString(5,request.getParameter("streetCity"));
             stmt.setString(6,request.getParameter("Pincode"));
             stmt.setString(7,request.getParameter("aadharNo"));
             stmt.setString(8,request.getParameter("car"));
             stmt.setString(9,request.getParameter("from"));
             stmt.setString(10,request.getParameter("to"));
  
             int i=stmt.executeUpdate();  
             
  
                
             con.close();
             stmt.close();
         }catch(Exception e){ 
             out.println(e);
         }  
    
             
        %>
        <div class="mainDiv">
            <h1 align="center">Thanks for Booking Enjoy your Ride</h1>
            <table border="1" align="center" style="font-family: 'Poppins Light'; padding: 2px; border: 2px solid black;">
                <tr ><td colspan="2" align="center" style="background-color: hsl(154, 59%, 51%);color: white;font-family: 'Poppins Medium';">Your Ride Details</td></tr>

                <% String Phone = request.getParameter("phone");
                   
                    try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003");
                    PreparedStatement stmt = con2.prepareStatement("select * from bookings where Phone=?");
                    stmt.setString(1,Phone);
                    ResultSet result =stmt.executeQuery();
                    
                    
          
                    while(result.next()){
                %>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        First Name
                    </td>
                    <td>
                        <%=result.getString(1)%>
                    </td>
                <tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Last Name
                    </td>
                    <td>
                        <%=result.getString(2)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Phone
                    </td>
                    <td>
                        <%=result.getString(3)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Email Address
                    </td>
                    <td>
                        <%=result.getString(4)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Street/City
                    </td>
                    <td>
                        <%=result.getString(5)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Pincode 
                    </td>
                    <td>
                        <%=result.getString(6)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Aadhar No.
                    </td>
                    <td>
                        <%=result.getString(7)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        Vehicle
                    </td>
                    <td>
                        <%=result.getString(8)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        From
                    </td>
                    <td>
                        <%=result.getString(9)%>
                    </td>
                </<tr>
                <tr>
                    <td style="font-family: 'Poppins Medium';">
                        To
                    </td>
                    <td>
                        <%=result.getString(10)%>
                    </td>
                </tr>

                <% }
        con2.close(); } 
        catch (Exception ex) 
        { 
            ex.printStackTrace();
        } %>
            </table>
            <div class="gridButtons">

                <button class="feedBackButton" onclick="location.href='feedbackpage.html'">Give Feedback</button>
                <button class="cancelButton" onclick="location.href='cancel2.html'">Cancel this Ride</button>
            </div>
        </div>
            
    </body>
</html>
