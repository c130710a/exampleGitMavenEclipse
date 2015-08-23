
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="java.util.*"%>
<%@page import="com.comics.app.Model.Comic" %>

<c:out value="FEde"></c:out>
<html>
<head>
<title>Prueba de curso Java</title>
<link type="text/css" rel="stylesheet" href="./css/estilo.css" />
</head>
<body>
<nav role="navigation">
	<!--Contenido de imagen perfil y marca-->
	<div class ="barra clearfix">	
		<div class="profdiv"><img class="profile" src="https://f1.bcbits.com/img/0000101507_10.jpg"></div>
		<div class="brandiv clearfix"><label class="brand">Comics</label></div>
	</div>
	<!--Menu de opciones para sistema-->
	<div class="menudiv">
		<div class="menubar">
			<div id="opciones" class="menubut"><img src="./imgs/plus.png" ></div>
			<label id="lblevent" style="position:absolute;top:7em;right:.7em">Eventos</label><div class="eventbut menudesplegado"><img src="./imgs/event.png"></div>
			<label id="lblcontact" style="position:absolute;top:13em;right:.7em">Contactos</label><div class="conmenu menudesplegado"><img src="./imgs/contact.png" ></div>
			<label id="lbltweet" style="position:absolute;top:19em;right:.7em">Tweetea!</label><div class="tweet menudesplegado" ><img src="./imgs/twitter.png" ></div>
		</div>
	</div>
</nav>
<div class="cuerpo" >
<div class="galeria">
	<c:forEach  var="libro" items="${Listado}">
	 <article class="articulo">
		 <label class="tit-artic">"${libro.getNameComic()}"</label>
		 <label class="cont-artic">Review <i>:"${libro.getReviewComic()}"</i></label>
		 <label class="pie-artic">De : "${libro.getCompanyComic()}"</label>
	 </article>	
	</c:forEach>

</div>
</div>
<footer>
<div>Todas las cuestiones reservadas y todo eso que hace falta para que no te destruyan <script type="text/javascript">document.write(new Date().getFullYear());
</script> </div>
<div><a href="mailto:emilio.gonzalez@globant.com">Super direccion cosmica</a> </div>
</footer>

</body>
</html>
<script src="./js/RecursoJS.js"></script>