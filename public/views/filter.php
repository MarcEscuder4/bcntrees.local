<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <link rel="icon" href="/img/logobcn.ico">
    <title>BCNTrees | Filtre d'Àrbres</title>
  </head>

  <body>
    <!-- Navbar -->
    <div>
    <nav class="navbar fixed-top navbar-dark bg-dark">
    <div class="container-fluid">
    <div class="container-fluid">
    </div>
      <a class="navbar-brand" href="#">
      <img src="/img/bcnlogo.png" alt="" width="" height="24" class="d-inline-block align-text-top">
        BCN Trees
      </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Inici</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Barcelona</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Notícies</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Àrbres
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item disabled" href="#">Àrbres</a></li>
              <li><a class="dropdown-item" href="#">Fulla caduca</a></li>
              <li><a class="dropdown-item" href="#">Fulla perenne</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Costa</a></li>
              <li><a class="dropdown-item" href="#">Interior</a></li>
              <li><a class="dropdown-item" href="#">Muntanya</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Tots</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
          <button class="btn btn-outline-light" type="submit">Buscar</button>
        </form>
        </div>
  </div>
</nav>

    <!-- Imatge superior -->
    <div class="image-container">
      <img src="../img/bcnstreets(3).jpg" class="img-fluid w-100" alt="barcelona ciutat">
    </div">

    <!-- Contingut -->
    <div class="container mt-5 mb-5">
      <h1 class="text-black fw-bold">Els arbres de Barcelona</h1>
      <h2 class="text-muted fs-5">Descobreix la seva bellesa i biodiversitat</h2>

      <p class="text-justify">
        <strong>Barcelona</strong> és una ciutat coneguda per la seva rica història, la seva arquitectura 
        impressionant i la seva cultura vibrant, però els seus espais verds i arbres també 
        juguen un paper crucial en la configuració de la seva identitat. Amb <strong>més de 200 
        espècies diferents</strong>, el bosc urbà de la ciutat proporciona ombra, millora la 
        qualitat de l'aire i millora la biodiversitat. Arbres emblemàtics com el 
        plàtan (<i>Platanus hispanica</i>), el jacarandà i les palmeres recorren els seus 
        carrers i parcs, creant un paisatge mediterrani únic. Llocs com el Parc de 
        la Ciutadella i Montjuïc acullen una vegetació exuberant, que ofereix una escapada 
        natural dins de la bulliciosa ciutat. El compromís de Barcelona amb la 
        sostenibilitat garanteix que els seus arbres segueixin sent una <strong>part vital del seu 
        encant urbà</strong>.
      </p>
    </div">

    <br>
    <!-- Buscador i taula de recerca -->
    <div>
      <h2 class="text-black fw-bold">Cercador d'arbres</h2>
      <table class="table caption-top">
        <caption>Buscador per característiques</caption>
        <thead>
          <tr>
            <th scope="col">Ubicació</th>
            <th scope="col">Alçada</th>
            <th scope="col">Capçada</th>
            <th scope="col">Tipus de fulla</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><a href="#" class="link-dark">Totes</a></td>
            <td><a href="#" class="link-dark">Qualsevol</a></td>
            <td><a href="#" class="link-dark">Qualsevol</a></td>
            <td><a href="#" class="link-dark">Qualsevol</a></td>
            <td></td>
          </tr>
          <tr>
            <td><a href="#" class="link-dark">Zones pavimentades</a></td>
            <td><a href="#" class="link-dark">Baixa (menys de 6 m)</a></td>
            <td><a href="#" class="link-dark">Estreta (de 2 a m de diàmetre)</a></td>
            <td><a href="#" class="link-dark">Caduca</a></td>
            <td></td>
          </tr>
          <tr>
            <td><a href="#" class="link-dark">Zones verdes</a></td>
            <td><a href="#" class="link-dark">Mitjana (de 6 a 15 m)</a></td>
            <td><a href="#" class="link-dark">Mitjana (de 4 a 6 m de diàmetre)</a></td>
            <td><a href="#" class="link-dark">Perenne</a></td>
          </tr>
          <tr>
            <td></td>
            <td><a href="#" class="link-dark">Alta (més de 15 m)</a></td>
            <td><a href="#" class="link-dark">Ampla (de 6 a 8 m de diàmetre)</a></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><a href="#" class="link-dark">Molt ampla (més de 8 m de diàmetre)</a></td>
            <td></td>
          </tr>
        </tbody>
      </table>
      <br>
      <div class="mb-3">
        <label for="buscador" class="form-label"><strong>Gènere</strong> o <strong>Nom comú</strong></label>
        <div class="d-flex">
          <input id="buscador" class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
          <button class="btn btn-outline-dark" type="submit">Buscar</button>
        </div>
      </div>
    </div>

    <br>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>

  
  <!-- Footer -->
  <footer class="bg-light py-4 mt-5">
    <div>
        <!-- Sección superior: Patrocinis i Xarxes Socials -->
        <div class="row align-items-center">
            <div class="col-md-6 d-flex justify-content-center align-items-center">
                <a href="https://web.gencat.cat/ca/inici" class="mx-3">
                    <img src="/../img/logogencat.png" alt="gencat" class="sponsor-logo sponsor-logo img-fluid">
                </a>
                <a href="https://www.diba.cat/es/" class="mx-3">
                    <img src="/../img/logodb.png" alt="diputaciobarcelona" class="sponsor-logo sponsor-logo2 sponsor-logo img-fluid">
                </a>
            </div>
            <div class="col-md-6 d-flex justify-content-center">
                <a href="https://facebook.com" class="mx-2 text-dark"><i class="fab fa-facebook fa-2x"></i></a>
                <a href="https://twitter.com" class="mx-2 text-dark"><i class="fab fa-twitter fa-2x"></i></a>
                <a href="https://instagram.com" class="mx-2 text-dark"><i class="fab fa-instagram fa-2x"></i></a>
            </div>
        </div>
        <br>

        <!-- Sección inferior: Derechos reservados -->
        <div class="row mt-3">
            <div class="col text-center">
                <p class="mb-0">&copy; 2025 BCN Trees. Todos los derechos reservados.</p>
            </div>
        </div>
    </div>
</footer>



</html>

