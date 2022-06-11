<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<div class="container">
    <h1>Skin management</h1>
    <%--@elvariable id="skin" type="lombok"--%>
    <form:form action="/admin/saveorupdate" method="post" modelAttribute="skin" enctype="multipart/form-data">
        <form:select cssClass="form-select" path="type">
            <form:option id="1" value="1">--Phantom--</form:option>
            <form:option id="0" value="0">--Vandal--</form:option>
        </form:select>
<%--        <div class="mt-3">--%>
<%--            <form:label  path="id" class="form-lable" type="number">Skin ID:</form:label>--%>
<%--            <form:input path="id" name="id" class="form-control"/>--%>
<%--            <div><form:errors cssClass="text-danger" path="name"></form:errors> </div>--%>
<%--        </div>--%>
        <div class="mt-3">
            <form:label path="name" class="form-lable">Skin Name:</form:label>
            <form:input path="name" name="name" class="form-control"/>
            <div><form:errors cssClass="text-danger" path="name"></form:errors> </div>
        </div>
        <div class="mt-3">
            <form:label path="image" class="form-lable">Image:</form:label>
            <form:input type="file" path="image" name="attach" class="form-control"/>
        </div>
        <div class="mt-3">
            <form:label path="price" class="form-lable">Price:</form:label>
            <form:input type="number" path="price" name="price" class="form-control"/>
        </div>
        <div class="mt-3">
            <form:label path="rare" class="form-lable">Rare:</form:label>
            <form:radiobutton path="rare" value="0" label="medium" checked="checked"/>
            <form:radiobutton path="rare" value="1" label="rare"/>
            <form:radiobutton path="rare" value="2" label="very rare"/>
            <form:radiobutton path="rare" value="3" label="legend"/>
        </div>
        <div class="mt-3">
            <form:label path="buff" class="form-lable">Buff:</form:label>
            <form:input type="number" path="buff" name="buff" class="form-control"/>
        </div>
        <button type="submit" class="btn btn-primary mt-3">ADD ♥</button>
    </form:form>
    <a class="btn btn-primary mt-3">Import</a>
<%--    <a class="btn btn-primary mt-3" href="/admin/product/export">Export</a>--%>
</div>
