<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="entity.Livre" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Library ggg</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<%--    <jsp:include page="common/header.jsp" />--%>
<div class="row row-cols-auto">
    <jsp:include page="common/sidebar.jsp"/>
    <section class="col-9 w-75 ">
        <jsp:include page="common/navbar.jsp"/>
        <h3>Les livres</h3>
        <button class="btn btn-primary p-1 btnright m-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Ajouter un livre
        </button>

        <table class="table w-100">
            <thead class="table-dark">
            <tr class="text-center">
                <td>id</td>
                <td>Nom</td>
                <td>Sidi</td>
                <td>Actions</td>
            </tr>
            </thead>
            <tbody>
            <c:if test="${true}">
                <h2>les choses se passent de la meilleure facon</h2>
            </c:if>
<%--            <% List<Livre> livres = (List) request.getAttribute("livres");--%>
<%--                for (Livre l: livres) {--%>
<%--            %>--%>
<%--            <tr class="text-center">--%>
<%--                <td><c:out value="${l.getLibelle()}"/></td>--%>
<%--                <td><c:out value="${l.getCout()}"/></td>--%>
<%--                <td><c:out value="${l.getAuteurId()}"/></td>--%>
<%--                <td>--%>
<%--                    <button class="btn btn-dark">voir</button>--%>
<%--                    <button class="btn btn-danger">Supprimer</button>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>

            </tbody>
        </table>
    </section>
</div>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="LivreServlet" method="post" >
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label>Libelle</label>
                            <input type="text" name="libelle" placeholder="Le libelle du livre" class="form-control"/>
                        </div>
                        <div class="form-group col-md-12">
                            <label> Cout</label>
                            <input type="number" name="cout" placeholder="Le cout du livre" class="form-control"/>
                        </div>
                        <div class="form-group col-md-12">
                            <label>Auteur</label>
                            <input type="number" name="auteur" placeholder="L' auteur du livre" class="form-control"/>
                        </div>
                        <div class="form-group">

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary float-right">Sauvegarder</button>
                </div>
            </form>

        </div>
    </div>
</div>
<script src="js/bootstrap.bundle.js"></script>
</body>
</html>