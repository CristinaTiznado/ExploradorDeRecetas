<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Receta</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body>
    <div class="container">
        <c:choose>
            <c:when test="${!empty error}">
                <div class="error-box">
                    <p>${error}</p>
                </div>
            </c:when>
            <c:otherwise>
                <h1>${nombreReceta}</h1>
                <h3>Ingredientes:</h3>
                <ul>
                    <c:forEach var="ingrediente" items="${ingredientes}">
                        <li>${ingrediente}</li>
                    </c:forEach>
                </ul>
            </c:otherwise>
        </c:choose>
        
        <br>
        <a href="/recetas" class="back-link">← Volver al listado</a>
    </div>
</body>
</html>