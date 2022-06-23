<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp" %>

<c:if test="${ empty InfoAdmin }">
	<div>
        <p style="margin-top: 50vh;text-align: center;font-size: x-large;"> Bạn phải <a href="<c:url value="/admin/dang-xuat"/>">Đăng nhập</a> mới có quyền truy cập </p>
    </div>
</c:if>

<c:if test="${ not empty InfoAdmin }" >
<%@include file="/WEB-INF/views/layouts/admin/header.jsp" %>
<!-- partial -->
<div class="container-fluid page-body-wrapper">

<%@include file="/WEB-INF/views/layouts/admin/menu.jsp" %>
<c:if test="${ InfoAdmin.role == 1 }" >
<div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="d-flex justify-content-between flex-wrap">
                <div class="d-flex align-items-end flex-wrap">
                  <div class="mr-md-3 mr-xl-5">
                    <h2>Xin chào, ${ InfoAdmin.username }</h2>
                    <div class="d-flex">
                      <i class="mdi mdi-home text-muted hover-cursor"></i>
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý danh mục&nbsp;/&nbsp; Chi tiết danh mục</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Chi tiết danh mục</h4>
                  <div class="row">
                  	<div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Mã hãng danh mục</label>
                        <div class="col-sm-9  col-form-label">
                        ${ detailprovider.id }
                        </div>
                      </div>
                    </div>
                   </div>
                   
                  <div class="row">
                  	<div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên hãng hãng sản xuất</label>
                        <div class="col-sm-9  col-form-label">
                        ${ detailprovider.name }
                        </div>
                      </div>
                    </div>
                   </div>
                   
                   <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Miêu tả *</label>
                        <div class="col-sm-9  col-form-label">
                          ${ detailprovider.description }
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="d-flex justify-content-center">
                    <a class="nav-link mr-2" href="<c:url value="/admin/quan-ly-danh-muc"/>">
                      <span class="menu-title btn btn-outline-danger btn-fw">Quay lại</span>
                    </a>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      </div>
</c:if>