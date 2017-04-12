<html>
<head>
<title>Calcula IMC</title>
<style>form[role=caixa] {
	color: #5d5d5d;
	background: #F0F0E8;
	padding: 25px;
	border-radius: 15px;
	-moz-border-radius: 15 px;
	-webkit-border-radius: 15px;
}
</style>
</head>
<meta charset="utf-8">
<link rel="stylesheet"
<link href="bootstrap/css/bootstrapcerulean.min.css" rel="stylesheet">
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<br> <br>
				<form role="caixa">
					<div align="center">
						<h2>CALCULADORA IMC</h2>
					</div>
					<br> <strong>Peso</strong><br> <input type="text"
						class="form-control input-sm" name="n1"
						placeholder="Informe seu peso em quilos"><br>
						<strong>Altura</strong><br> <input type="text" class="form-control input-sm"
						name="n2" placeholder="Informe sua altura"><br>

					<button type="submit" class="btn-primary btn-sm">Calcular</button>
					<br> <br>


					<%
						float n1 = 0;
						float n2 = 0;
						String result = "";

						try {

							n1 = Float.parseFloat(request.getParameter("n1"));
							n2 = Float.parseFloat(request.getParameter("n2"));

						} catch (NullPointerException npe) {
						}

						catch (NumberFormatException nfe) {
						}

						 result = String.valueOf(n1/(n2*n2));						
					%>
					<div align="center">
						<h4 class="text-primary">
							<%
								out.print("Resultado: " + result);
							%>
						</h4>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>