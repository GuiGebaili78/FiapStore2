<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualização de Produto</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="container">
		<h1>Edição de Produto</h1>
		<form action="produto" method="post">
			<input type="hidden" value="cadastrar" name="acao">
			<div class="form-group">
				<label for="id-nome">Nome</label> <input type="text" name="nome"
					id="id-nome" class="form-control">
			</div>
			<div class="form-group">
				<label for="id-valor">Valor</label> <input type="text" name="valor"
					id="id-valor" class="form-control">
			</div>
			<div class="form-group">
				<label for="id-quantidade">Quantidade</label> <input type="text"
					name="quantidade" id="id-quantidade" class="form-control">
			</div>
			<div class="form-group">
				<label for="id-fabricacao">Data de Fabricação</label> <input
					type="text" name="fabricacao" id="id-fabricacao"
					class="form-control">
			</div>
			<input type="submit" value="Salvar" class="btn btn-primary">
		</form>

		<c:if test="${not empty msg }">
			<div class="alert alert-success">${msg}</div>
		</c:if>
		<c:if test="${not empty erro }">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
	</div>
	<%@ include file="footer.jsp"%>


</body>
</html>