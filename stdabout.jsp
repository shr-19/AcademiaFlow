<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-About</title>
    <style>
        p {
            justify-content: center;
            color: white;
            font-size: 1.5rem;

        }

        h1 {
            color: white;
            text-align: center;
            font-size: 4.5rem;
            margin-top: auto;
        }

        .logo {
            padding-top: 2%;
            padding-left: 45%;
            padding-bottom: 0;
            width: 5%;
            height: 5%;
        }
    </style>
</head>

<body>

    <div style="width:100%;display: inline-flex;">
        <div style="width:20%">
            <% boolean b=false; Cookie c=null; Cookie[] cookie=null; cookie=request.getCookies(); if(cookie!=null){
                for(int i=0;i<cookie.length;i++){ c=cookie[i]; if((c.getName()).compareTo("uemail")==0){ b=false; }
                else{ b=true; } } }else{ out.println("failed"); } if(b){ %>
                <jsp:include page="panel.jsp" />

                <%} else{ %>
                    <jsp:include page="stdheader.jsp" />
                    <% }%>
        </div>
        <div style="width:95%;background-color: rgb(36, 36, 74);height:550px;padding: 2%;">
            <section class="section">
                <img class="logo" src="acd.jpg">
                <h1>AcademiaFlow</h1>
                <p>"Welcome to "AcademiaFlow", a comprehensive project designed to streamline student information
                    management. With a primary focus on storing student data, this platform empowers users with CRUD
                    operations—enabling seamless storage, retrieval, addition, deletion, and editing of information.
                    From an administrative standpoint, logged-in users possess the ability to oversee and manipulate the
                    entirety of details. Non-logged-in users can effortlessly contribute details, while enhanced
                    features become accessible upon login.
                    Whether you're an administrator shaping the future or a user contributing to the tapestry,
                    "AcademiaFlow" is your gateway to a seamless academic journey.
                </p>

            </section>
        </div>
    </div>


</body>

</html>