<%-- 
    Document   : LandingPageOne
    Created on : 26-Apr-2023, 10:45:33 am
    Author     : itzch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Amble Cars</title>
        <style>

            body{
                background-image: url("mainBackGround.jpg");
                background-size: cover;
            }
            .mainDiv{
                background-color: white;
                border: 2px solid black;
                border-radius: 10px 10px 10px 10px;
                margin: 10%;
                height: 2400px;
            }
            .headingDiv{

                background-image: url("headingBgFour.jpg");
                background-size: cover;
                width: 97.5%;
                height: 15%;
                margin-left: 15px;

                margin-top: 15px;

            }
            #headingMessage{
                position: absolute;
                top: 270px;
                left: 245px;
                font-family: 'Poppins medium';
                font-size: 55px;
                color: white;
            }
            hr{

                position: absolute;
                margin-top: 16%;
                margin-left: 5%;
                border: 2px solid rgb(255, 255, 255);
                box-shadow: 1px 1px 1px 1px white;
                width: 47%;
            }
            td{
                padding: 5px;

            }
            table{
                margin-top: 3%;
                width: 85%;
            }
            .registrationDiv {
                margin-left: 10%;
                margin-top: 10%;
                background-image: url("regBackGround.jpg");
                background-size: cover;
                width: 80%;
                height: 670px;
                border-radius: 10px 10px 10px;
            }

            h2 {
                position: absolute;
                font-family: 'Poppins Medium';
                font-size: 35px;
                left: 23.5%;
                top: 154%;
                color: white;

            }

            #hrLine {
                position: absolute;
                color: white;
                border: 1px solid white;
                box-shadow: 1px 1px 1px 1px white;
                width: 17%;
                left: 18.5%;
                top: 134.5%;
            }

            .mainForm {
                border: 0px solid black;
                display: grid;
                grid-gap: 8%;
                grid-template-columns: repeat(2, 30%);
                grid-auto-rows: 0fr;
                height: 350px;
                width: 730px;
                position: absolute;
                margin-top: 8.75%;
                margin-left: 4%;
                padding: 1%;

            }
            .mainForm2 {
                border: 0px solid black;
                display: grid;
                grid-gap: 8%;
                grid-template-columns: repeat(2, 30%);
                grid-auto-rows: 0fr;

                width: 730px;
                position: absolute;
                margin-top: 25%;
                margin-left: 4%;
                padding: 1%;

            }

            .mainForm3 {
                border: 0px solid black;
                display: grid;
                grid-gap: 8%;
                grid-template-columns: repeat(2, 30%);
                grid-auto-rows: 0fr;

                width: 730px;
                position: absolute;
                margin-top: 30.75%;
                margin-left: 4%;
                padding: 1%;

            }
            .mainForm4 {
                border: 0px solid black;
                display: grid;
                grid-gap: 8%;
                grid-template-columns: repeat(2, 30%);
                grid-auto-rows: 0fr;

                width: 730px;
                position: absolute;
                margin-top: 20.75%;
                margin-left: 4%;
                padding: 1%;

            }
            #textBox {
                font-family: 'Poppins';
                border: 1px solid hsl(0, 0%, 100%);
                width: 100%;
                padding: 2%;
                border-radius: 5px;

            }

            #Label {
                position: absolute;
                left: 23.5%;
                top: 170%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }

            #Label2 {
                position: absolute;
                left: 2%;
                top: 17.5%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }

            #Label3 {
                position: absolute;
                left: 38.5%;
                top: 17.5%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }
            #Label4 {
                position: absolute;
                left: 2%;
                top: 110%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }

            #Label5 {
                position: absolute;
                left: 38.5%;
                top: 110%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }
            #Label31 {
                position: absolute;
                left: 23.5%;
                top: 194%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }
            #textBox1{
                font-family: 'Poppins';
                border: 1px solid hsl(0, 0%, 100%);
                width: 100%;
                padding: 2%;
                border-radius: 5px;
                margin-top: 10%;
            }
            #textBox2{
                font-family: 'Poppins';
                border: 1px solid hsl(0, 0%, 100%);
                width: 100%;
                padding: 2%;
                border-radius: 5px;
                margin-top: 14%;
            }
            #Label32 {
                position: absolute;
                left: 5.5%;
                top: 100%;
                font-family: 'Poppins Medium';
                font-size: 18px;
                color: white;


            }
            #textBox3{
                font-family: 'Poppins';
                border: 1px solid hsl(0, 0%, 100%);
                width: 100%;
                height: 60%;
                padding: 2%;
                border-radius: 5px;
                margin-top: 14%;
            }
            #textBox5{
                font-family: 'Poppins';

                width: 54%;
                padding: 0.70%;
                border-radius: 5px;
                margin-top: 34.5%;
                margin-left: 7.75%;
                z-index: 2000 !important;
            }
            .submitButton{
                margin-top: 62%;
                margin-left: 8%;
                background-color: hsl(154, 59%, 51%);
                border-radius: 5px;
                color: white;
                font-family: 'Poppins';
                font-size: 16px;
                width: 55%;
                padding: 1%;
                transition-property: box-shadow,background-color;
                transition-timing-function: ease-in;
                transition-delay: 0s;
                transition-duration: 0.3s;
            }
            .submitButton:hover{
                box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
            }
            .submitButton:focus{
                background-color: hsl(154, 56%, 36%);
            }
            .uni{
                margin:0;
                padding: 0;
                font-family: 'poppins' sans-serif;
                box-sizing: border-box;
            }
            .container{
                height: 100vh;
                width: 100%;
                background: white;
                display: flex;
                align-items: center;
                justify-content:center ;
            }
            .gallery{
                display: flex;
                align-items: center;
                justify-content: center;

            }
            .img-box{
                width:230px;
                height: 500px;
                margin: 10px;
                border-radius: 50px;
                background:url(g1.jpg);
                background-size: cover;
                background-position: center;
                transition: width 0.5s;
            }
            .img-box:hover{
                width: 300px;
                cursor:pointer;
            }
            .img-box:nth-child(2){
                background: url(g2.jpg);
                background-size: cover;
                background-position: center;
            }
            .img-box:nth-child(3){
                background: url(g3.jpg);
                background-size: cover;
                background-position: center;
            }
            .img-box h3{
                color: #fff;
                position: absolute;
                bottom: 0;
                left:30px;
                opacity: 0;
                transition: bottom 0.5s,opacity 0.5s;

            }
            .img-box:hover h3{
                opacity: 1;
                bottom: 25px;


            }
        </style>
    </head>
    <body>
        <div class="mainDiv">
            <div class="headingDiv">
                <h1 id="headingMessage">Welcome to Amble Cars</h1>

                <hr>
            </div>
            <h3 align="center" style="font-family: 'Poppins Light'; font-size: 20px;margin-top: 3%">Check out our various services and book now</h3>
            <table border="1" align="center" style="font-family: 'Poppins Light'; padding: 2px; border: 2px solid black;">
                <tr style=" background-color:   hsl(154, 59%, 51%);color:white;" id="row">
                    <td>Name</td>
                    <td>Type</td>
                    <td>Number</td>
                    <td>Seats</td>
                    <td>Available</td>
                    <td>Cost/Day</td>
                    <td>Status</td>
                </tr>
                <% try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/javaproject?characterEncoding=latin1","root","Cjeyaseelan@20112003");
                    Statement stmt=con.createStatement(); 
                    String sql="select * from Transports" ;
                    ResultSet rs =stmt.executeQuery(sql); 
                    while(rs.next()){ %>
                <tr>
                    <td>
                        <%=rs.getString(1) %>
                    </td>
                    <td>
                        <%=rs.getString(2) %>
                    </td>
                    <td>
                        <%=rs.getString(3) %>
                    </td>
                    <td>
                        <%=rs.getString(4) %>
                    </td>
                    <td>
                        <%=rs.getString(5) %>
                    </td>
                    <td>
                        <%=rs.getString(6) %>
                    </td>
                    <td>
                        <%=rs.getString(7) %>
                    </td>
                </tr>
                <% } 
                    con.close(); } 
                    catch (Exception e) 
                    { 
                        e.printStackTrace();
                    } %>
            </table>
            <div class="registrationDiv">
                <div class="mainTitle">
                    <h2>Book your ride</h2>
                    <hr id="hrLine">
                </div>
                <form action="registerValidate.jsp" method="POST">
                    <label for="Name" id="Label">Name*</label>
                    <div class="mainForm">

                        <input type="text" name="fname" id="textBox" placeholder="First Name">
                        <input type="text" name="lname" id="textBox" placeholder="Last Name">
                        <label for="Name" id="Label2">Phone Number*</label>
                        <label for="" id="Label3">Email Address*</label>
                        <input type="text" name="phone" id="textBox1" placeholder="000-000-0000">
                        <input type="text" name="emailAddress" id="textBox1" placeholder="abc@gmail.com">

                    </div>
                    <label for="" id="Label31">Address*</label>
                    <div class = "mainForm4">
                        <input type="text" name="streetCity" id="textBox" placeholder="Street/City">
                        <input type="text" name="Pincode" id="textBox" placeholder="Pincode">
                    </div>


                    <div class="mainForm2">
                        <label for="Name" id="Label2">Aadhar Number*</label>
                        <label for="" id="Label3">Vehicle</label>
                        <input type="text" name="aadharNo" id="textBox2" placeholder="0000-0000-0000">
                        <select name="car" id="textBox2" aria-placeholder="Please Select">
                            <option value="Audi A4">Audi A4</option>
                            <option value="Force Tempo 3050">Force Tempo 3050</option>
                            <option value="Mahindra Thar">Mahindra Thar</option>
                            <option value="Mahindra XUV500">Mahindra XUV500</option>
                            <option value="Force Tempo 4020">Force Tempo 4020</option>
                            <option value="Jeep Meridian">Jeep Meridian</option>
                            <option value="Kia Carnival">Kia Carnival</option>
                            <option value="Hyundai Tucson">Hyundai Tucson</option>
                            <option value="MG Gloster">MG Gloster</option>
                            <option value="Jeep Compass">Jeep Compass</option>
                        </select>

                        <label for="Name" id="Label4">From*</label>
                        <label for="" id="Label5">To*</label>

                    </div>
                    <div class="mainForm3">
                        <input type="date" name="from" id="textBox3" >
                        <input type="date" name="to" id="textBox3" >
                    </div>
                    <input type="submit" value="Book" class="submitButton">
                </form>

            </div>
            <div class="uni">

                <div class="container">
                    <div class="gallery">
                        <div class="img-box"><h3>G1</h3></div>
                        <div class="img-box"><h3>G2</h3></div>
                        <div class="img-box"><h3>G3</h3></div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>