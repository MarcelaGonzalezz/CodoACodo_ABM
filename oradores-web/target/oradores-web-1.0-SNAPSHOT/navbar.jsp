<!--<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="<%=request.getContextPath()%>">Codo a Codo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/alta.jsp">Alta</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a>
        </li>
      </ul>

    </div>
  </div>
</nav>-->
<nav class="navbar navbar-expand-lg navbar-dark" id="headerNav" style="background-color: #c063ff">
  <div class="container-fluid">
    <a class="navbar-brand d-block d-lg-none" href="<%=request.getContextPath()%>">
      <img src="img/codoacodo.png" height="80" />
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class=" collapse navbar-collapse " id="navbarNavDropdown">
      <ul class="navbar-nav mx-auto align-items-center">
        <li class="nav-item">
          <a class="nav-link mx-2" href="<%=request.getContextPath()%>/alta.jsp">Alta</a>
        </li>
        <li class="nav-item d-none d-lg-block">
          <a class="nav-link mx-2" href="<%=request.getContextPath()%>">
              <img src="img/codoacodo.png" height="80" />
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link mx-2" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a>
        </li>
      </ul>
    </div>
  </div>
</nav>