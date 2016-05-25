<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Kannada.Index" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
	<meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <style>
        body {
            background-size: 100% auto ;
        }
        .custom{
            padding-top: 15%;
            padding-left:25%;
        }
    </style>
</head>
<body background="imgback.jpg">
    <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-10">
            <div class="row middle">
                <nav class="nav nav-pills nav-justified">
                    <div class="container-fluid">
                        <div class="custom">
                            <h1> Learn Kannada </h1>
                            <p>
                                Your guide to learn Kannada.<br />
                                This website takes you to a journey from "Kannada Barolla" or "Swalpa Barotte" to "KANNDA BAROTTE".
                                 Why learn Kannada ?<br />
                                -Need for effective communication with the day to day service providers like maids, vendors, Cab drivers etc.<br />
                                -For the educational needs of children.<br /> 
                                -The growing Kannada sentiment among localities.<br /> 
                                -The desire of many immigrants to blend with real Bengaluru.<br />
                                -Kannada is a must.
                                So go ahead and enjoy your journey and realize "Serendipity called Karnataka and Kannada"!!
                            </p>
                            <div class="btn-group btn-group-lg">
                                <a href="Login.aspx" class="btn btn-link glyphicon glyphicon-log-in" >Login</a>
                                <a href="Signup.aspx" class="btn btn-link glyphicon glyphicon-user">SignUp</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
            </div>
        <div class="col-sm-1"></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
        </div>
    </div>
</body>
</html>
