<%-- 
    Document   : loginPage
    Created on : 25-Apr-2023, 11:49:11 pm
    Author     : itzch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Regsitration</title>
    <style>
        body {
            background-image: url("bg_edited_2.jpg");
            background-size: cover;
            
        }
        #mainText {
            
            border: 0px solid black;
            text-align: center;
            font-family: 'Poppins Medium';
            color: white;
            font-size: larger;
        }
        #forms {
            border: 1px solid white;
            margin-left: 30%;
            margin-right: 30%;
            
            margin-bottom: 3%;
            padding-left: 12.5%;
            padding-top: 3.5%;
            padding-bottom: 3.5%;
            border-radius: 10px;
            background-color: rgb(255, 255, 255);
            box-shadow: 0px 10px 0px rgba(66, 66, 66, 0.4);
        }
        #textBox {
            font-family: 'Poppins';
            border: 1px solid hsl(246, 25%, 77%);
            width: 50%;
            padding: 2%;
            border-radius: 5px;
        
        }
        #Button {
            background-color: hsl(154, 59%, 51%);
            color: white;
            font-size: 16px;
            font-family: 'Poppins';
            border: 1px solid hsl(246, 25%, 77%);
            width: 55%;
            height: 0%;
            border-radius: 5px;
            padding: 2%;
        }
        

    </style>
</head>

<body>
    <div class="textArea" id="mainText">
        <h1>Book your first ride by Signing up</h1>
        <p>Amble cars tries to solve your transportation problems in real-time. <br>
            We provide facilities with safety and security
        </p>
    </div>
    <div id="forms">
        <form name="actualForm" action="RegistrationValidation" method="post">
            <input type="text" name="name" id="textBox" placeholder="Name"><br><br>
            <input type="text" name="age" id="textBox" placeholder="Age"><br><br>
            <input type="text" name="dob" id="textBox" placeholder="Date of Birth"><br><br>
            <input type="text" name="phone" id="textBox" placeholder="Phone"><br><br>
            <input type="text" name="uname" id="textBox" placeholder="Username"><br><br>
            <input type="password" name="pword" id="textBox" placeholder="Password"><br><br>
            <input type="submit" value="Submit" id="Button">
        </form>
        
    </div>
    
</body>

</html>
