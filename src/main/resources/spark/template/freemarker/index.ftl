<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>The Sims 4</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="resources/publico/startbootstrap-blog-home-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->

    <!-- Custom styles for this template -->
    <!--<link href="resources/publico/startbootstrap-blog-home-gh-pages/css/blog-home.css" rel="stylesheet">-->

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">The Sims 4</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/form">Create</a>
                </li>
    </ul>
    </div>
    </div>
</nav>

<!-- Sidebar Widgets Column -->
<div class="col-md-4">
    <br><br>
    <!-- Search Widget -->
    <div class="card my-4">
        <h5 class="card-header">Search</h5>
        <div class="card-body">
            <div class="input-group">
                <form action="/estudiante" method="get">
                    <input type="text" class="form-control" placeholder="Search for..." id="matricula" name="matricula">
                    <span class="input-group-btn">
                        <button class="btn btn-secondary" type="submit" id="searchbutton">Go!</button>
                    </span>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Page Content -->
<div class="container">

        <!-- Blog Post -->
    <#if listaEstudiantes?exists>
            <#list listaEstudiantes as estudiante>
                <div class="card mb-4">
                    <div class="card-body">
                        <h2 class="card-title">${estudiante.matricula}</h2>
                        <#if estudiante.nombre?exists>
                            <p class="card-text">${estudiante.nombre}</p>
                        </#if>
                        <#if estudiante.correo?exists>
                            <p class="card-text">${estudiante.correo}</p>
                        </#if>
                        <#if estudiante.carrera?exists>
                            <p class="card-text">${estudiante.carrera}</p>
                        </#if>
                    </div>
                </div>
            </#list>
    <#elseif estudiantebuscado?exists>
        <div class="card mb-4">
            <div class="card-body">
                <h2 class="card-title">${estudiantebuscado.matricula}</h2>
                <p class="card-text">${estudiantebuscado.nombre}</p>
                <#if estudiantebuscado.correo?exists>
                    <p class="card-text">${estudiantebuscado.correo}</p>
                </#if>
                <#if estudiantebuscado.carrera?exists>
                    <p class="card-text">${estudiantebuscado.carrera}</p>
                </#if>
            </div>
        </div>
    </#if>
</div>

<!-- Pagination -->
<ul class="pagination justify-content-center mb-4">
    <li class="page-item">
        <a class="page-link" href="#">&larr; Older</a>
    </li>
    <li class="page-item disabled">
        <a class="page-link" href="#">Newer &rarr;</a>
    </li>
</ul>


</div>
<!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; The Sims 4 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="resources/publico/startbootstrap-blog-home-gh-pages/vendor/jquery/jquery.min.js"></script>
<script src="resources/publico/startbootstrap-blog-home-gh-pages/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<#--<script type="text/javascript">-->
<#--    $(document).ready(function () {-->
<#--        $('#searchbutton').click(function () {-->

<#--            document.location.href =-->

<#--        });-->
<#--    });-->
<#--</script>-->

</html>