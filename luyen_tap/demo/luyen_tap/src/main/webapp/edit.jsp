<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 8/9/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<form method="post" action="/hocsinhs?action=edit&id=${hocSinh.maHocSinh}" style="width: 500px">
    <div class="mb-3">
        <label  class="form-label">Tên Học Sinh</label>
        <input type="text" class="form-control"
               value="<c:out value='${hocSinh.tenHocSinh}'/>"/>
    </div><br><br>
    <div class="mb-3">
        <label  class="form-label">Giới Tính</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.gioiTinh}'/>">
    </div><br><br>
    <div class="mb-3">
        <label  class="form-label">Tuổi</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.tuoi}'/>">
    </div><br><br>
    <div class="mb-3">
        <label  class="form-label">Tên Lớp</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.tenLop}'/>">
    </div>
    <br><br>
    <div class="mb-3">
        <label  class="form-label">Điểm Văn</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.diemVan}'/>">
    </div>
    <br><br>
    <div class="mb-3">
        <label  class="form-label">Điểm Toán</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.diemToan}'/>">
    </div>
    <br><br>
    <div class="mb-3">
        <label  class="form-label">Điểm Anh</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.diemAnh}'/>">
    </div>
    <br><br>
    <div class="mb-3">
        <label  class="form-label">Điểm Sử</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.diemSu}'/>">
    </div>
    <br><br>
    <div class="mb-3">
        <label  class="form-label">Điểm Địa Lý</label>
        <input type="text" class="form-control" value="<c:out value='${hocSinh.diemDiaLy}'/>">
    </div>
    <td colspan="2" align="center">
        <input type="submit" value="Save"/>
    </td>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
