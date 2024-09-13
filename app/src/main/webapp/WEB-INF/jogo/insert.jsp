<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo Jogo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">CRUD</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/jogo/list">Jogos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/categoria/list">Categorias</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/plataforma/list">Plataformas</a>
                  </li>
                </ul>
              </div>
            </div>
        </nav>
        <div class="container">
            <h1>
                Novo Jogo
            </h1>
            <form action="/jogo/insert" method="post">
                <div class="form-group">
                    <label for="titulo">titulo:</label>
                    <input type="text" name="titulo" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select">
                        <c:forEach var="c" items="${categorias}">
                            <option value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataforma(s):</label>
                    <c:forEach var="p" items="${plataformas}">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}" />
                        <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                    </div>
                    </c:forEach>
                </div>
                <br/>
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
        </div>
    </body>    
</html>