<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-Data</title>

    <style>

        .container {

            text-align: center;
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
   
    <% 
    boolean b=false;
    Cookie c=null;
    Cookie[] cookie=null;
    cookie=request.getCookies();
    if(cookie!=null){
        for(int i=0;i<cookie.length;i++){
            c=cookie[i];
            if((c.getName()).compareTo("uemail")==0){
                b=false;
            }
            else{
                b=true;
                
            }
        }
    }else{
        out.println("failed");
    }
    if(b){

    
    %>
    <jsp:include page="std.jsp"/>
  
    <%}
    else{ %>
        <jsp:include page="stdheader.jsp"/>
    <% }%>
    <img class="back-img" src="back.jpg">
    <h1 class="name"><img class="logo" src="acd.jpg"> AcademiaFlow</h1>
    
</body>

</html>