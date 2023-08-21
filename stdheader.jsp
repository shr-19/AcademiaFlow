<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std</title>
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
    </style>
</head>
<body>
    <header class="header">
        <a href="stdhome.jsp" id="home"><img src="home.png" width="10% height=5%">Home</a>
        <a href="stdabout.jsp" id="about"><img src="about.png" width="10% height=5%">About</a>
        <a href="stdadd.jsp"><img src="reg.png" width="10% height=5%">Add</a>
        <a href="stdview.jsp"><img src="view.png" width="10% height=5%">View</a>
        <a href="stdlogout"><img src="logout.png" width=8% height=80%>Logout</a>
    </header>
    
</body>
</html>