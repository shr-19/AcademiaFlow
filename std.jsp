<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-Data</title>

    <style>
        .header{
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
            height: 100vh;
            position: fixed;
            color: #fff;
            top: 0;
            z-index: 9999;
            left: 0;
            padding: 20px;
        }
        .header a{
            text-decoration: none;
            color: black;
            font-size: 1.75rem;
            padding-left: 10px;
            display: flex;
            flex-direction: row;

        }
        .header a:hover{
            color: rgb(0, 0, 255);
        }

        .back-img {
            background-repeat: no-repeat;
            padding-left: 210px;
            position: fixed;
            width: 82%;
            height: auto;
            object-fit: cover;
        }

        .name {
            font-size: 4rem;
            padding-top: 210px;
            padding-left: 270px;
            position: absolute;
            color: white;

        }

        .logo {
            width: 5%;
            height: 5%;
        }
        
    </style>
</head>

<body>
    <header class="header">
        <a href="stdhome.jsp" id="home"><img src="home.png" width="10% height=5%">Home</a>
        <a href="stdabout.jsp" id="about"><img src="about.png" width="10% height=5%">About</a>
        <a href="stdadd.jsp"><img src="reg.png" width="10% height=5%">Add</a>
        <a href="stdlogin.jsp"><img src="login.png" width="10% height=auto">Login</a>
        </header>
    
    <img class="back-img" src="back.jpg">
    <h1 class="name"><img class="logo" src="acd.jpg"> AcademiaFlow</h1>
    
</body>

</html>