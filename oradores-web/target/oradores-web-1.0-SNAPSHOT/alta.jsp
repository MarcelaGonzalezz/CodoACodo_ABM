<html>
    <head>
            <%@include file="head.jsp" %>
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container my-5">
                <section class="border border-primary rounded-4 col-6 mx-auto text-center p-3">
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form method="post"
                        action="<%=request.getContextPath()%>/CreateController">
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="apellido" type="text" class="form-control" id="apellido" placeholder="Apellido" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="email" type="email" class="form-control" id="email" placeholder="Email" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="tema" type="text" class="form-control" id="tema" maxlength="120" placeholder="Tema">
                        </div>
                        <button class="btn btn-outline-success my-3">
                            Dar de alta
                        </button>
                    </form>
                        <a class="btn btn-outline-danger" href="index.jsp" role="button">Cancelar</a>
                </section>
            </div>
        </main>
    </body>	
</html>