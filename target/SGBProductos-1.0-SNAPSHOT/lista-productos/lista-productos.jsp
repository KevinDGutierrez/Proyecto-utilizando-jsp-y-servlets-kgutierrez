<%-- 
    Document   : lista-productos
    Created on : 5/07/2024, 21:20:47
    Author     : kevin
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-whidth, initial-scale=1.0">
        <title>Sistema de gestión</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    
    <body>
    <nav class="position-relative navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="../index.jsp">Sistema de gestión de inventarios</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menú</h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link" href="../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Formulario de Productos</a>
                        </li>
                        <li>
                            <a class="nav-link active" href="lista-productos.jsp">Lista de Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <div class="container mt-5 pt-5">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th class="text-center bg-dark text-white">#</th>
                    <th class="text-center bg-dark text-white">Nombre</th>
                    <th class="text-center bg-dark text-white">Descripción</th>
                    <th class="text-center bg-dark text-white">Marca</th>
                    <th class="text-center bg-dark text-white">Precio</th>
                    <th class="text-center bg-dark text-white">Imagen</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="text-center bg-danger text-white" scope="row">1</th>
                    <td class="text-center bg-primary text-white">Laptop</td>
                    <td class="text-center bg-primary text-white">Dell Inspiron 15</td>
                    <td class="text-center bg-primary text-white">Dell</td>
                    <td class="text-center bg-primary text-white">Q.650.00</td>
                    <td class="text-center bg-primary text-white"><img src="../assets/image/laptop.jpg" alt="Laptop" width="150" height="100" title="Laptop Dell"></td>
                </tr>
                <tr>
                    <th class="text-center bg-danger text-white" scope="row">2</th>
                    <td class="text-center bg-primary text-white">Smartphone</td>
                    <td class="text-center bg-primary text-white">Samsung Galaxy S21</td>
                    <td class="text-center bg-primary text-white">Samsung</td>
                    <td class="text-center bg-primary text-white">Q.799.99</td>
                    <td class="text-center bg-primary text-white"><img src="../assets/image/smartphone.jpg" alt="Smartphone" width="120" height="150" title="Samsung Galaxy S21"></td>
                </tr>
                <tr>
                    <th class="text-center bg-danger text-white" scope="row">3</th>
                    <td class="text-center bg-primary text-white">Tablet</td>
                    <td class="text-center bg-primary text-white">iPad Air</td>
                    <td class="text-center bg-primary text-white">Apple</td>
                    <td class="text-center bg-primary text-white">Q.599.00</td>
                    <td class="text-center bg-primary text-white"><img src="../assets/image/tablet.jpg" alt="Tablet" width="120" height="130" title="iPad Air"></td>
                </tr>
                <tr>
                    <th class="text-center bg-danger text-white" scope="row">4</th>
                    <td class="text-center bg-primary text-white">Smartwatch</td>
                    <td class="text-center bg-primary text-white">Apple Watch Series 6</td>
                    <td class="text-center bg-primary text-white">Apple</td>
                    <td class="text-center bg-primary text-white">Q.399.00</td>
                    <td class="text-center bg-primary text-white"><img src="../assets/image/smartwatch.jpg" alt="Smartwatch" width="120" height="100" title="Apple Watch"></td>
                </tr>
                <tr>
                    <th class="text-center bg-danger text-white" scope="row">5</th>
                    <td class="text-center bg-primary text-white">Headphones</td>
                    <td class="text-center bg-primary text-white">Sony WH-1000XM4</td>
                    <td class="text-center bg-primary text-white">Sony</td>
                    <td class="text-center bg-primary text-white">Q.350.00</td>
                    <td class="text-center bg-primary text-white"><img src="../assets/image/headphones.jpg" alt="Headphones" width="150" height="150" title="Sony Headphones"></td>
                </tr>
            </tbody>
        </table>
    </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
