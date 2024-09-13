<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Editar Categorias</title>
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
            <h1>Editar Categoria</h1>
            <form action="/categoria/update" method="post">
                <input type="hidden" name="id" value="${categoria.id}" />
                <div class="form-group">
                    <label for="name">Nome:</label>
                    <input type="text" name="nome" class="form-control" value="${categoria.nome}" />
                </div>
                <br>
                <a href="/categoria/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
        </div>
    </body>    
</html>