<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-Login</title>
    <style>
    .login{
        text-align: center;
        background-position: center;
        padding-bottom: 1%;
        padding-top: 2%;
        margin-top: 5%;
        margin-right: 20px;
        background-color: rgb(11, 42, 110);
        margin-left: 30%;
        margin-right: 30%;
        height:20%;
        box-shadow: 0.5em 0.5em 0.5em 0.5em rgb(77, 104, 150);  
    }
    input[type=text]{
        padding:10px;
        margin: 5px 0px;
        border:0;
        border-bottom: 1px solid #eee;
        box-shadow:0 0 15px 4px rgba(0,0,0,0.06);

    }
    input[type=submit]{
        width:25%;
        margin-top: 5%;
        text-align: center;
        padding:10px;
        border:none;
        font-weight: 600;
        color: black;
    }
    input[type=submit]:hover{
        color:white;
        background-color: black;
        display: inline-block;
        transition: background-color 0.3s;
    }
    h1{
        color:black;
        text-align: center;
        padding-left: 1%;
        font-size: 4rem;
        margin-top: auto;
    }
    .logo {
       padding-left: 1%;
       padding-top:1% ;
        width: 6%;
        height: 5%;
    }
</style>
</head>
<body>
    <div>
        <h1><img class="logo" src="acd.jpg">   AcademiaFlow</h1>
         
    <div class="login">
        <h2 style="color:white">Login page</h2>
        <form action="stdlog"  method="post">
            <input type="text" name="uemail" placeholder="Enter the email.."><br>
            <input type="text" name="password" placeholder="Enter the password.."><br>
            <input type="submit" value="Login">
        </form>
    </div>
</div>
    
</body>
</html>