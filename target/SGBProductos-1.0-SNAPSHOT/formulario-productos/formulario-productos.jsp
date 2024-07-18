<%-- 
    Document   : formulario-productos
    Created on : 5/07/2024, 19:45:07
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sistema de gesti�n</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    
    <body>
        <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp">Sistema de gesti�n de inventarios</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Men�</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                            <li class="nav-item">
                                <a class="nav-link" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="formulario-productos.jsp">Formulario de Productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../producto-servlet">Lista de Productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        
        <div class="container mt-5 pt-5">
            <% ArrayList<String> producto = (ArrayList)request.getAttribute("producto"); %>
            
            <% if(request.getAttribute("mensaje") != null) { %>
                <div class="alert alert-success text-center mt-3" role="alert">
                    <%= request.getAttribute("mensaje") %>
                </div>
            <% } %>
            
            <% if(producto != null) { %>
                <div class="card mt-3 border-info">
                    <div class="card-header text-white bg-info">
                        Producto Agregado
                    </div>
                    <ul class="list-group list-group-flush">
                        <% for(String pro : producto) { %>
                            <li class="list-group-item"><%= pro %></li>
                        <% } %>
                    </ul>
                </div>
            <% } %>
        </div>
        
        <div class="container mt-5 w-75">
            <form action="/SGBProductos/producto-servlet" method="post" enctype="multipart/form-data">
                <!-- Nombre del Producto -->
                <div class="form-floating mb-4">
                    <input class="form-control" id="nombreProducto" name="nombreProducto" type="text" placeholder="Nombre del Producto" aria-label="Nombre del Producto">
                    <label for="nombreProducto">Nombre del Producto</label>
                </div>
                <!-- Descripci�n del Producto -->
                <div class="form-floating mb-4">
                    <textarea class="form-control" id="descripcionProducto" name="descripcionProducto" placeholder="Descripci�n del Producto" aria-label="Descripci�n del Producto"></textarea>
                    <label for="descripcionProducto">Descripci�n del Producto</label>
                </div>
                <!-- Marca del Producto -->
                <div class="form-floating mb-4">
                    <input type="text" class="form-control" id="marcaProducto" name="marcaProducto" placeholder="Marca del Producto" aria-label="Marca del Producto">
                    <label for="marcaProducto">Marca del Producto</label>
                </div>
                <!-- Precio del Producto -->
                <div class="input-group mb-4">
                    <span class="input-group-text">Q</span>
                    <input type="text" class="form-control" id="precioProducto" name="precioProducto" placeholder="Precio del Producto" aria-label="Precio del Producto">
                    <span class="input-group-text">.00</span>
                </div>
                <!-- Bot�n Agregar -->
                <div>
                    <input class="btn btn-success" type="submit" value="Agregar">
                </div>
            </form>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
