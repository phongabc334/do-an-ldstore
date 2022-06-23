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
                      <p class="text-muted mb-0 hover-cursor">&nbsp;/&nbsp;Quản lý tài khoản&nbsp;&nbsp;/&nbsp;Tài khoản của tôi</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 grid-margin">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Cập nhật tài khoản</h4>
                <c:if test="${ not empty AdminEditUserStatus }">
                	<c:if test="${ AdminEditUserStatus == 'ok' }">
                		<div class="alert alert-success" role="alert">
						  Cập nhật thành công
						</div>
                	</c:if>
                	<c:if test="${ AdminEditUserStatus != 'ok' }">
                		<div class="alert alert-danger" role="alert">
					  ${ AdminEditUserStatus }
					</div>
                	</c:if>
				</c:if>
                <form:form action="" modelAttribute="AdminEditUser" method="POST">  
                  <p class="card-description">
                    Nhập thông tin tài khoản
                  </p>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên tài khoản *</label>
                        <div class="col-sm-9">
                        <form:input  path="id_user" type="hidden"  value="${ AdminEditUser.id_user }"/>
                          <form:input class="form-control" path="username" placeholder="Mời nhập tên hãng" required="required" disabled="true" value="${ AdminEditUser.username }"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Email *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="email" placeholder="Mời nhập email" required="required" disabled="true" value="${ AdminEditUser.email }"/>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Họ *</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="firstname" placeholder="Mời nhập họ"  value="${ AdminEditUser.firstname }"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Tên</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="lastname" placeholder="Mời nhập tên"  value="${ AdminEditUser.lastname }"/>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Địa chỉ</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="address" placeholder="Mời nhập địa chỉ"  value="${ AdminEditUser.address }"/>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Số điện thoại</label>
                        <div class="col-sm-9">
                          <form:input class="form-control" path="phone" placeholder="Mời nhập số điện thoại"  value="${ AdminEditUser.phone }"/>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  
	                        	<form:input path="status" class="form-control" disabled="true" type="hidden" value="${ AdminEditUser.status}"/>
	                        	<form:input path="role" class="form-control" disabled="true" type="hidden" value="${ AdminEditUser.role }"/>
                  <div class="d-flex justify-content-center">
                    <div class="nav-link ml-2">
						<button type="submit" class="menu-title btn btn-outline-success btn-fw" >Cập nhật</button>
					</div>
					<a class="nav-link mr-2" href="<c:url value="/admin/tai-khoan/doi-mat-khau"/>">
                      <span class="menu-title btn btn-outline-danger btn-fw">Đổi mật khẩu</span>
                    </a>
                  </div>
                </form:form>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
</c:if>
