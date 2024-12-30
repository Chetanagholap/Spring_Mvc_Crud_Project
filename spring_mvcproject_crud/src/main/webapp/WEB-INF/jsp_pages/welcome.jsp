  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
  
  
  <table border="1px"  class="table table-striped">
   <tr class="table-info">
   <th> Id </th>
      <th> Name </th>
         <th> Email </th>
            <th> Password </th>
               <th> Confirm_password </th>
               <th>Action </th>
   </tr>
  
  <c:forEach items="${temp}" var="e">
  <tr class="table-light">
  <td>${e.mid}</td>
    <td>${e.mname}</td>
      <td>${e.memail}</td>
        <td>${e.mpass}</td>
          <td>${e.mcpass}</td>
            <td>
            <a href="editdata/${e.mid}" class="btn btn-warning" >Edit | </a>
            <a href="deletedata/${e.mid}" class="btn btn-danger">Delete</a>
            </td>
  
    </tr>
  </c:forEach>

  </table>