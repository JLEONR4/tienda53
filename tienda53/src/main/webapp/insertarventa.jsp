<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tama�o de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pesta�a -->
<title>Buscar cliente</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style2.css" rel="stylesheet" type="text/css" />
<script>
	window.onload = function() {
		var req = new XMLHttpRequest();
		req.open('GET', 'http://localhost:8080/contadorventa', false);
		req.send(null);
		var cont = null;
		if (req.status == 200)
			cont = JSON.parse(req.responseText);
		console.log(cont.toString());
		document.getElementById("consecutivo").value = cont;
	};
</script>
</head>

<!-- Navbar modulos-->
	<body id="body-pd">
        <div class="l-navbar" id="navbar">
            <nav class="nav">
                <div>
                    <div class="nav__brand">
                        <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                        <a href="#" class="nav__logo">Tienda 53</a>
                    </div>
                    <div href="#" class="nav__link">
                            <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Usuarios</span> 


                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                <a href="insertarusuario.jsp" class="collapse__sublink">Agregar</a>
                                <a href="eliminarusuario.jsp" class="collapse__sublink">Eliminar</a>
                                <a href="actualizarusuario.jsp" class="collapse__sublink">Actualizar</a>
                                <a href="buscarusuario.jsp" class="collapse__sublink">Buscar</a>
                                <a href="listausuarios.jsp" class="collapse__sublink">Lista</a>
                            </ul>
                        </div>
                      <div href="#" class="nav__link">
                            <ion-icon name="pricetag-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Clientes</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                <a href="insertarcliente.jsp" class="collapse__sublink">Agregar</a>
                                <br>
                                <a href="eliminarcliente.jsp" class="collapse__sublink">Eliminar</a>
                                <br>
                                <a href="actualizarcliente.jsp" class="collapse__sublink">Actualizar</a>
                                <br>
                                <a href="buscarcliente.jsp" class="collapse__sublink">Buscar</a>
                                <br>
                                <a href="listaclientes.jsp" class="collapse__sublink">Lista</a>
                            </ul>
                        </div>
                        <div href="#" class="nav__link">
                            <ion-icon name="briefcase-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Proveedores</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                <a href="insertarproveedor.jsp" class="collapse__sublink">Agregar</a>
                                <br>
                                <a href="eliminarproveedor.jsp" class="collapse__sublink">Eliminar</a>
                                <a href="actualizarproveedor.jsp" class="collapse__sublink">Actualizar</a>
                                <a href="buscarproveedor.jsp" class="collapse__sublink">Buscar</a>
                                <a href="listaproveedores.jsp" class="collapse__sublink">Lista</a>
                            </ul>
                        </div>
                           <div href="#" class="nav__link">
                            <ion-icon name="basket-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Productos</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                
                                <a href="insertarproducto.jsp" class="collapse__sublink">Agregar</a>
                            </ul>
                        </div>
                        </div>
                           <div href="#" class="nav__link">
                            <ion-icon name="cash-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Ventas</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                
                                <a href="insertarventa.jsp" class="collapse__sublink">Agregar</a>
                            </ul>
                        </div>

                        <div href="#" class="nav__link">
                            <ion-icon name="reader-outline" class="nav__icon"></ion-icon>
                            <span class="nav__name">Reportes</span>

                            <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                            <ul class="collapse__menu">
                                <a href="listadodeusuarios.jsp" class="collapse__sublink">Usuarios</a>
                                <br>
                                <a href="listadodeclientes.jsp" class="collapse__sublink">Clientes</a>
                                <a href="listarventas.jsp" class="collapse__sublink">Ventas</a>
                                
                            </ul>
                        </div>
                            
                            <a href="#" class="nav__link">
                             <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                             <span class="nav__name">Cerrar sesi�n</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- ===== IONICONS ===== -->
       <script type="module" src="https://unpkg.com/ionicons@5.1.2/dist/ionicons/ionicons.esm.js"></script>

        <!-- ===== MAIN JS ===== -->
    <script src="script.js"></script>

	<div style="padding-left: 5px">

	<div id="layoutSidenav_content">
		<main>

			<div w3-include-html="snippets/sidenav.html"></div>

			<div
				class="container-fluid px-4 animate__animated animate__bounceInLeft">
				<h1 class="mt-4">Registrar venta</h1>
				<ol class="breadcrumb mb-4">
					<li class="breadcrumb-item active">Permite ingresar una venta
						realizada a un cliente especifico, realizado por un usuario
						especifico</li>
				</ol>


				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="card mb-4">
						<div class="card-header text-white bg-dark">
							<i class="fas fa-table"></i> Registro de venta

						</div>

						<div class="card-body">

							<h1>
								<i class="fas fa-file-invoice-dollar"></i> Datos de la venta
							</h1>

							<form>
								<div class="col-xl-4 col-lg-4 col-md-8 col-sm-8">
									<div class="input-group input-group-lg mb-3">
										<span class="input-group-text" id="basic-addon1">Consecutivo</span>
										<input type="text" class="form-control" readonly="readonly"
											id="consecutivo">
									</div>
								</div>
								<h3>Datos del cliente</h3>
								<div class="row ">
									<div class="col-xl-3 col-lg-4 col-md-4 col-sm-5">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text"> <i id="checkcliente"
												class="fas fa-times text-danger"></i></span> <span
												class="input-group-text" id="basic-addon1">Cedula
												cliente</span> <input type="text" class="form-control"
												id="cedula_cliente" oninput="traerNombreCliente()">
										</div>
									</div>
									<div class="col-xl-9 col-lg-8 col-md-8 col-sm-7">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Nombre</span>
											<input type="text" class="form-control" readonly="readonly"
												id="nombre_cliente">
										</div>
									</div>


								</div>



								<div class="border-top "></div>
								<h3>Datos del Usuario</h3>
								<div class="row ">
									<div class="col-xl-3 col-lg-4 col-md-4 col-sm-5">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text"><i id="checkusuario"
												class="fas fa-times text-danger"></i></span> <span
												class="input-group-text" id="basic-addon1">Cedula
												usuario</span> <input type="text" class="form-control"
												id="cedula_usuario" oninput="traerNombreUsuario()">
										</div>
									</div>
									<div class="col-xl-9 col-lg-8 col-md-8 col-sm-7">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Nombre</span>
											<input type="text" class="form-control" readonly="readonly"
												id="nombre_usuario">
										</div>
									</div>
								</div>
								<div class="border-top"></div>
								<h3>Datos de los productos</h3>


								<!-- Producto 1 -->
								<div class="row ">
									<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text"><i id="checkitem1"
												class="fas fa-times text-danger"></i></span> <span
												class="input-group-text" id="basic-addon1">Cod.</span> <input
												type="text" class="form-control" id="codigo_producto1">
										</div>
									</div>

									<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
										<button type="button" class="btn btn-info text-white"
											onclick="cargarProducto1()">
											<i class="fas fa-search-dollar"></i>
										</button>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Nombre</span>
											<input type="text" class="form-control" id="nombre_producto1"
												readonly="readonly">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Cant.</span>
											<input type="text" class="form-control" id="cant1"
												oninput="calcularPrecio1()">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Valor
												total</span> <input type="text" class="form-control" id="valtotal1"
												readonly="readonly" value="0">
										</div>
									</div>

								</div>

								<!-- producto 2 -->
								<div class="row ">
									<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text"><i id="checkitem2"
												class="fas fa-times text-danger"></i></span> <span
												class="input-group-text" id="basic-addon1">Cod.</span> <input
												type="text" class="form-control" id="codigo_producto2">
										</div>
									</div>

									<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
										<button type="button" class="btn btn-info text-white"
											onclick="cargarProducto2()">
											<i class="fas fa-search-dollar"></i>
										</button>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Nombre</span>
											<input type="text" class="form-control" id="nombre_producto2"
												readonly="readonly">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Cant.</span>
											<input type="text" class="form-control" id="cant2"
												oninput="calcularPrecio2()">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Valor
												total</span> <input type="text" class="form-control" id="valtotal2"
												readonly="readonly" value="0">
										</div>
									</div>

								</div>

								<!-- producto 3 -->
								<div class="row ">
									<div class="col-xl-2 col-lg-2 col-md-3 col-sm-3">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text"><i id="checkitem3"
												class="fas fa-times text-danger"></i></span> <span
												class="input-group-text" id="basic-addon1">Cod.</span> <input
												type="text" class="form-control" id="codigo_producto3">
										</div>
									</div>

									<div class="col-xl-1 col-lg-1 col-md-1 col-sm-1">
										<button type="button" class="btn btn-info text-white"
											onclick="cargarProducto3()">
											<i class="fas fa-search-dollar"></i>
										</button>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Nombre</span>
											<input type="text" class="form-control" id="nombre_producto3"
												readonly="readonly">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Cant.</span>
											<input type="text" class="form-control" id="cant3"
												oninput="calcularPrecio3()">
										</div>
									</div>

									<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Valor
												total</span> <input type="text" class="form-control" id="valtotal3"
												readonly="readonly" value="0">
										</div>
									</div>

								</div>
								<div class="border-top"></div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												venta</span> <input type="text" class="form-control"
												id="total_venta">
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												IVA</span> <input type="text" class="form-control" id="total_iva">
										</div>
									</div>
								</div>

								<div class="row justify-content-end mt-3">
									<div class="col-xl-3 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-3">
											<span class="input-group-text" id="basic-addon1">Total
												venta + IVA</span> <input type="text" class="form-control"
												id="total_venta_iva">
										</div>
									</div>
								</div>

								<div class="row ">
									<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
										<button type="button" class="btn btn-success"
											onclick="registrar()">
											<i class="fas fa-plus-circle"></i> Registrar venta
										</button>
									</div>
									<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4">
										<button type="button" class="btn btn-warning"
											onclick="window.location.reload();">
											<i class="fas fa-sync-alt"></i> Recargar pagina
										</button>
									</div>
									<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
										<div class="alert alert-success visually-hidden" role="alert"
											id="correcto">Datos insertados con exito, recargue la
											pagina para una nueva venta</div>
										<div class="alert alert-danger visually-hidden" role="alert"
											id="error">Error al insertar datos, recargue la pagina
											y reintente de nuevo</div>
									</div>

								</div>

							</form>

						</div>
					</div>

				</div>

			</div>
		</main>

		<div w3-include-html="snippets/footer.html"></div>


	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>

	<script>
		includeHTML();
	</script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>

	<script>
		function traerNombreCliente() {
			var client = document.getElementById("cedula_cliente").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarcliente?cedula_cliente='
					+ client, false);
			req.send(null);
			var cliente = null;
			if (req.status == 200)
				cliente = JSON.parse(req.responseText);
			console.log(cliente);
			var icono = document.getElementById("checkcliente");
			if (cliente.toString() != "") {
				document.getElementById("nombre_cliente").value = cliente[0].nombre_cliente;
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");
			} else {
				document.getElementById("nombre_cliente").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		function traerNombreUsuario() {
			var user = document.getElementById("cedula_usuario").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarusuariocedula?cedula_usuario='
					+ user, false);
			req.send(null);
			var usuario = null;
			if (req.status == 200)
				usuario = JSON.parse(req.responseText);
			console.log(usuario);
			var icono2 = document.getElementById("checkusuario");
			if (usuario.toString() != "") {
				document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
				icono2.classList.replace("text-danger", "text-success");
				icono2.classList.replace("fa-times", "fa-check");
			} else {
				document.getElementById("nombre_usuario").value = "";
				icono2.classList.replace("text-success", "text-danger");
				icono2.classList.replace("fa-check", "fa-times");
			}
		}
		var precio1 = 0.0;
		function cargarProducto1() {
			var prod1 = document.getElementById("codigo_producto1").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?codigo_producto='
					+ prod1, false);
			req.send(null);
			var producto1 = null;
			if (req.status == 200)
				producto1 = JSON.parse(req.responseText);
			var icono = document.getElementById("checkitem1");
			if (producto1.toString() != "") {
				console.log(producto1);
				document.getElementById("nombre_producto1").value = producto1[0].nombre_producto;
				precio1 = parseFloat(producto1[0].precio_venta);
				console.log("Precio1: " + precio1)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");
			} else {
				document.getElementById("nombre_producto1").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		var precio2 = 0.0;
		function cargarProducto2() {
			var prod2 = document.getElementById("codigo_producto2").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?codigo_producto='
					+ prod2, false);
			req.send(null);
			var producto2 = null;
			if (req.status == 200)
				producto2 = JSON.parse(req.responseText);
			var icono = document.getElementById("checkitem2");
			if (producto2.toString() != "") {
				console.log(producto2);
				document.getElementById("nombre_producto2").value = producto2[0].nombre_producto;
				precio2 = parseFloat(producto2[0].precio_venta);
				console.log("Precio2: " + precio2)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");
			} else {
				document.getElementById("nombre_producto2").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		var precio3 = 0.0;
		function cargarProducto3() {
			var prod3 = document.getElementById("codigo_producto3").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			req.open('GET', 'http://localhost:8080/consultarproducto?codigo_producto='
					+ prod3, false);
			req.send(null);
			var producto3 = null;
			if (req.status == 200)
				producto3 = JSON.parse(req.responseText);
			var icono = document.getElementById("checkitem3");
			if (producto3.toString() != "") {
				console.log(producto3);
				document.getElementById("nombre_producto3").value = producto3[0].nombre_producto;
				precio3 = parseFloat(producto3[0].precio_venta);
				console.log("Precio3: " + precio3)
				icono.classList.replace("text-danger", "text-success");
				icono.classList.replace("fa-times", "fa-check");
			} else {
				document.getElementById("nombre_producto3").value = "";
				icono.classList.replace("text-success", "text-danger");
				icono.classList.replace("fa-check", "fa-times");
			}
		}
		function calcularPrecio1() {
			var cantidad = document.getElementById("cant1").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal1").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio1;
				console.log("Valor 1: " + valortotal);
				document.getElementById("valtotal1").value = valortotal;
			}
			calcularFinales();
		}
		function calcularPrecio2() {
			var cantidad = document.getElementById("cant2").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal2").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio2;
				console.log("Valor 2: " + valortotal);
				document.getElementById("valtotal2").value = valortotal;
			}
			calcularFinales();
		}
		function calcularPrecio3() {
			var cantidad = document.getElementById("cant3").value;
			var valortotal = 0.0;
			if (cantidad == "" || cantidad == null) {
				document.getElementById("valtotal3").value = 0;
			} else {
				valortotal = parseFloat(cantidad) * precio3;
				console.log("Valor 3: " + valortotal);
				document.getElementById("valtotal3").value = valortotal;
			}
			calcularFinales();
		}
		function calcularFinales() {
			var val1 = document.getElementById("valtotal1").value;
			var val2 = document.getElementById("valtotal2").value;
			var val3 = document.getElementById("valtotal3").value;
			totalventa = parseFloat(val1) + parseFloat(val2) + parseFloat(val3);
			document.getElementById("total_venta").value = totalventa;
			var iva = totalventa * 0.19;
			document.getElementById("total_iva").value = iva;
			document.getElementById("total_venta_iva").value = iva + totalventa;
		}
		function registrar() {
			try {
				formData = new FormData();
				formData.append("codigo_venta", document
						.getElementById("consecutivo").value);
				formData.append("cedula_cliente", document
						.getElementById("cedula_cliente").value);
				formData.append("cedula_usuario", document
						.getElementById("cedula_usuario").value);
				formData.append("ivaventa", document
						.getElementById("total_iva").value);
				formData.append("total_venta", document
						.getElementById("total_venta").value);
				formData.append("valor_venta", document
						.getElementById("total_venta_iva").value);
				var xhr = new XMLHttpRequest();
				xhr.open("POST", "http://localhost:8080/registrarventa");
				xhr.send(formData);
				setTimeout(
						function() {
							for (i = 1; i < 4; i++) {
								var actual = document
										.getElementById(("valtotal" + i
												.toString()).value);
								if (actual == 0) {
									continue;
								} else {
									var formData2 = new FormData();
									//formData2.append("codigo_detalle_venta", );
									formData2.append("cantidad_producto",
											document.getElementById("cant"
													+ i.toString()).value);
									formData2
											.append(
													"codigo_producto",
													document
															.getElementById("codigo_producto"
																	+ i
																			.toString()).value);
									formData2
											.append(
													"codigo_venta",
													document
															.getElementById("consecutivo").value);
									formData2.append("valor_total", document
											.getElementById("valtotal"
													+ i.toString()).value);
									formData2
											.append(
													"valor_venta",
													document
															.getElementById("total_venta").value);
									formData2
											.append(
													"valoriva",
													document
															.getElementById("total_venta_iva").value);
									var xhr2 = new XMLHttpRequest();
									xhr2
											.open("POST",
													"http://localhost:8080/registrardetalleventa");
									xhr2.send(formData2);
								}
							}
							var element = document.getElementById("error");
							element.classList.add("visually-hidden");
							var element2 = document.getElementById("correcto");
							element2.classList.remove("visually-hidden");
						}, 1500);
			} catch (error) {
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
			}
		}
	</script>
</body>
</html>
