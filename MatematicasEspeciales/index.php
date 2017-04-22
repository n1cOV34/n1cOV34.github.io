<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Monge-Kantorovich Transportation Problem (Modificado)</title>    
        <link href="css/bootstrap.min.css" rel="stylesheet">    
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Problema de transporte</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a data-toggle="modal" href="#myModalPresentacion" onclick="CallmePagePresentation()">Grupo Creativo</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="page-header">
                <h1>Problema de transporte</h1>
            </div>
            <!--<p class="lead">En la investigación de operaciones es muy conocido el problema de transporte a través del cual se realiza cálculos para determinar la manera en cómo se deben proceder para movilizar recursos a destinos finales de modo que su costo sea mínimo o en el caso de que dé se desee maximizar para obtener mayores ganancias.</p>-->
            <div id="data" class="table-responsive">
                <script type="text/javascript" src="http://www.wolfram.com/cdf-player/plugin/v2.1/cdfplugin.js"></script>
                <script type="text/javascript">
                var cdf = new cdfplugin();
                cdf.embed('cdf/problematransporte.cdf', 1180, 967);
                </script>
            </div>            
        </div>
        <div id="ViewModals"></div>
        <footer class="footer">
            <div class="container">
                <p class="pull-right"><a href="#">Regresar parte superior</a></p>
                <p class="text-muted">Universidad Piloto de Colombia</p>
            </div>
        </footer>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/functions.js"></script>
    </body>
</html>
