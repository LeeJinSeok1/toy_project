<%--
  Created by IntelliJ IDEA.
  User: ijinseog
  Date: 2024/01/19
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/admin_common/header.jsp" %>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
  <%--            메인상단--%>
  <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">배너관리</h1>
    <div class="btn-toolbar mb-2 mb-md-0">
      <div class="btn-group me-2">
        <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
        <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
      </div>
      <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle d-flex align-items-center gap-1">
        <svg class="bi"><use xlink:href="#calendar3"/></svg>
        This week
      </button>
    </div>
  </div>
    <canvas class="my-4 w-100" id="myChart" width="900" height="1000px"></canvas>


</main>

<%@ include file="/WEB-INF/views/admin_common/footer.jsp" %>
