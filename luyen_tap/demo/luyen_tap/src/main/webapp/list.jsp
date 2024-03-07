<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: thanh
  Date: 8/8/2023
  Time: 11:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<table class="table table-dark table-hover">
    <tr>
        <th>Tên Học Sinh</th>
        <th>Giới Tính</th>
        <th>Tuổi</th>
        <th>Tên Lớp</th>
        <th>Điểm Văn</th>
        <th>Điểm Toán</th>
        <th>Điểm Anh</th>
        <th>Điểm Sử</th>
        <th>Điểm Địa Lý</th>
        <th></th>
        <th></th>
    </tr>
    <c:forEach var="hocsinh" items="${hocSinh}">
       <tr>
           <td><c:out value="${hocsinh.tenHocSinh}"></c:out></td>
           <td><c:out value="${hocsinh.gioiTinh}"></c:out></td>
           <td><c:out value="${hocsinh.tuoi}"></c:out></td>
           <td><c:out value="${hocsinh.tenLop}"></c:out></td>
           <td><c:out value="${hocsinh.diemVan}"></c:out></td>
           <td><c:out value="${hocsinh.diemToan}"></c:out></td>
           <td><c:out value="${hocsinh.diemAnh}"></c:out></td>
           <td><c:out value="${hocsinh.diemSu}"></c:out></td>
           <td><c:out value="${hocsinh.diemDiaLy}"></c:out></td>
           <td>
               <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                       data-bs-target="#delete${hocsinh.maHocSinh}">
                   Xóa
               </button>

               <!-- Delete -->
               <form method="post" action="/hocsinhs?action=delete&code=${hocsinh.maHocSinh}">
                   <div class="modal fade" id="delete${hocsinh.maHocSinh}" tabindex="-1"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                       <div class="modal-dialog">
                           <div class="modal-content">
                               <div class="modal-header">
                                   <h5 class="modal-title" id="exampleModalLabel">DELETE STUDENT</h5>
                                   <button type="button" class="btn-close" data-bs-dismiss="modal"
                                           aria-label="Close"></button>
                               </div>
                               <div class="modal-body" style="color: black">
                                   Bạn có muốn xóa học sinh có tên là ${hocsinh.tenHocSinh}
                               </div>
                               <div class="modal-footer">
                                   <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                   </button>
                                   <button type="submit" class="btn btn-danger">Delete</button>
                               </div>
                           </div>
                       </div>
                   </div>
               </form>
           </td>
           <td>
               <button type="button" class="btn btn-danger" onclick="window.location.href ='/hocsinhs?action=edit&code=${hocsinh.maHocSinh}'">
                   Edit
               </button>
           </td>
       </tr>
    </c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
