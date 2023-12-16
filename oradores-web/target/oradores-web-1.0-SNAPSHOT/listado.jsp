<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="light">
    <head>
        <%@include file="head.jsp" %>
        <title>
          Listado
        </title>
        
    </head>
    
    <body>
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container table-responsive">
                <section class=" border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center" style="background-color: #d9c2ff">
                    <h2 class="my-4">Listado</h2>
                    <table class="table table-sm table-striped table-hover align-middle">
                        <thead>
                            <tr class="p-2 border-bottom border-info border-opacity-50">
                            <th scope="col">ID</th>
                            <th scope="col">NOMBRE</th>
                            <th scope="col">APELLIDO</th>
                            <th scope="col">EMAIL</th>
                            <th scope="col">TEMA</th>
                            <th scope="col">FECHA ALTA</th>
                            <th scope="col">ACCIONES</th>
                          </tr>
                        </thead>
                        <% 
                              //codigo java
                              //obtener el listado desde el request
                              //se guardo bajo el nombre de "listado"
                          List<Orador> listado = (List<Orador>)request.getAttribute("listado");
                        %>
                        <tbody>
                          <%
                               for( Orador  unOrador : listado) {
                          %>

                           <tr>
                               <td scope="row"> <%=unOrador.getId()%> </td>
                              <td><%=unOrador.getNombre() %></td>
                              <td><%=unOrador.getApellido() %></td>
                              <td><%=unOrador.getEmail() %></td>
                              <td class="max-width-column"><%=unOrador.getTema() %></td>
                              <td><%=unOrador.getFechaAlta() %></td>
                              <td class="p-1">
                                <a class="btn btn-outline-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getId()%>" role="button">Eliminar</a> | 
                                <a class="btn btn-outline-warning" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getId()%>" role="button">Editar</a>
                              </td>
                            </tr>
                           <%
                                }
                           %>
                        </tbody>
                    </table>
                </section>   
            </div>
        </main>
    </body>	
</html>