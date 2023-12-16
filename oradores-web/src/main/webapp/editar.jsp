<%@page import="com.codoacodo.dto.Orador"%>
<html>
    <head>
            <%@include file="head.jsp" %>	
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container my-5">
                <section class="border border-info rounded-4 col-6 mx-auto text-center p-3">
                    <% 
                        Orador orador = (Orador)request.getAttribute("orador");
                    %>
                    
                    <h1 class="text-center my-4">Editar Orador </h1>
                    <!--  JSP -->
                    <form method="POST"
                        action="<%=request.getContextPath()%>/api/EditarController">

                        <div class="my-3 mb-3">
                          <input name="id"
                                value="<%=orador.getId()%>"  
                                type="text" class="form-control" id="exampleFormControlInput1" readonly Style="display:none" >
                        </div>
                        <div class="my-3 mb-3">
                          <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                          <input name="nombre"
                                value="<%=orador.getNombre()%>"  
                                type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mb-3">
                          <label for="exampleFormControlTextarea1" class="form-label">Apellido</label>
                          <input name="apellido"
                                value="<%=orador.getApellido()%>" 
                                type="text" class="form-control" id="exampleFormControlTextarea1" placeholder="Apellido" maxlength="50">
                        </div>
                        <div class="my-3 mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input value="<%=orador.getEmail()%>" name="email" type="email" class="form-control" id="exampleFormControlTextarea1" placeholder="Email" maxlength="50">
                        </div>
                        <div class="my-3 mb-3">
                          <label for="exampleFormControlTextarea1" class="form-label">Tema</label>
                          <input name="tema"  value="<%=orador.getTema()%>" type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="120">
                        </div>
                        <button class="btn btn-outline-success my-3">
                            Grabar
                        </button>
                    </form>
                         <a class="btn btn-outline-danger" href="<%=request.getContextPath()%>/api/ListadoController" role="button">Cancelar</a>
                </section>
            </div>
        </main>
    </body>	
</html>