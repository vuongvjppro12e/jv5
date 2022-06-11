
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="container">
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Active</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Separated link</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
    </ul>

    <table class="table table-primary table-bordered text-center">
        <thead>
        <tr>
            <th>Id</th>
            <td>Name</td>
            <td>Price</td>
            <td>Image</td>
            <td>Create date</td>
            <td>Rare</td>
            <td>Buff</td>
            <td>Type</td>
            <td colspan="2">Manipulation</td>
        </tr>
        </thead>
        <c:forEach items="${LS}" var="skin">
            <tr>
                <td>${skin.id}</td>
                <td>${skin.name}</td>
                <td>${skin.price}</td>
                <td>${skin.image}</td>
                <td>${skin.createDate}</td>
                <td>${skin.rare}</td>
                <td>${skin.buff}</td>
                <td>${skin.type}</td>
                <td><a class="btn btn-primary" href="/admin/category/edit/${skin.id}">Edit</a></td>
                <td><a class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal${skin.id}">Delete</a></td>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal${skin.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có muốn xóa danh mục ${cate.id}?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                <a class="btn btn-danger" href="/admin/category/delete/${cate.id}">Xóa</a>
                            </div>
                        </div>
                    </div>
                </div>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
