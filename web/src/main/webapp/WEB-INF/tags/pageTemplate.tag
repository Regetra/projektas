<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="REGETRA registracijos sistema">
        <meta name="author" content="REGETRA">
        <link rel="icon" href="../../favicon.ico">

        <title>Regetra - geriausias pasirinkimas !</title>

        <link href="/resources/bootstrap/css/custom.css" rel="stylesheet">
        <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="/resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

        <script src="/resources/jquery/jquery-2.2.0.js"></script>
        <script src="/resources/bootstrap/js/bootstrap.js"></script>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">REGETRA</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/">Namai</a></li>
                        <li><a href="/Kategorijos/">Vairavimo kategorijos</a></li>
                        <li><a href="/Auto/">Egzaminavimo garazas</a></li>
                        <li><a href="/Personalas/">Personalo darbuotojai</a></li>
                        <li><a href="/Fil/">Filialai</a></li>
                        <li><a href="/Reg/">Registracija</a></li>
                        <li><a href="/inst/">Instruktoriai</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <div class="container">
            <div class="starter-template">
                <div class="jumbotron">
                    <h1> <img src="http://s31.postimg.org/qh1m3kkkb/reg.jpg" width="240" height="140" alt="Regetra"> Geriausias pasirinkimas</h1>
                </div>

                <jsp:doBody />
            </div>

        </div><!-- /.container -->
    </body>
</html>
