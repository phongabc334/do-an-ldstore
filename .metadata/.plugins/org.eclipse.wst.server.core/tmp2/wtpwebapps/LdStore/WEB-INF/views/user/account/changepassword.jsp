<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
        <title>Chỉnh sửa thông tin tài khoản</title>
        <div id="content" class="site-content" tabindex="-1">
            <div class="container">
                <nav class="woocommerce-breadcrumb"><a href="/LdStore/">Trang chủ</a><span class="delimiter"><i class="fa fa-angle-right"></i></span>Chỉnh sửa thông tin tài khoản</nav>
                <div class="site-content-inner row">
                    <div id="primary" class="content-area">
                        <main id="main" class="site-main">
                            <article id="post-29" class="post-29 page type-page status-publish hentry">

                                <div class="entry-content">
                                    <div class="woocommerce">
                                        <div class="customer-login-form no-registration-form">
                                            <div class="woocommerce-notices-wrapper"></div>
                                            <c:if test="${not empty status }">
                                            	<c:if test="${ status == 'ok' }">
                                            		<div class="col-auto d-flex justify-content-center align-items-center" >
														<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
															<div class="woocommerce-message" role="alert">
																 Đổi mật khẩu thành công	</div>
														</div>
													</div>
                                            	</c:if>
		                                		<c:if test="${ status != 'ok' }">
			                                		<div class="col-auto d-flex justify-content-center align-items-center" >
														<div class="woocommerce-notices-wrapper" style="width:50%; text-align:center">
															<div class="woocommerce-message" role="alert" style="background-color: darkred;">
																 ${ status }	</div>
														</div>
													</div>
												</c:if>
											</c:if>

                                            <form:form action="doi-mat-khau" modelAttribute="changepassword" method="POST">  
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="hidden"  path="id" value="${ InfoUser.id_user }" />  
                                                <form:input class="woocommerce-Input woocommerce-Input--text input-text" type="hidden" path="confirmoldpass" value="${ InfoUser.password }" />  
                                                    <label for="password">Mật khẩu cũ&nbsp;<span class="required">*</span></label>
                                                    <span class="password-input">
                                                    	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="oldpass" required="required" placeholder="Mời nhập mật khẩu" />  
                                                    <span class="show-password-input"></span></span>
                                                </p>
                                               	<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="password">Mật khẩu mới&nbsp;<span class="required">*</span></label>
                                                    <span class="password-input">
                                                    	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="newppass" required="required" placeholder="Mời nhập mật khẩu" />  
                                                    <span class="show-password-input"></span></span>
                                                </p>
                                                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                    <label for="password">Xác nhận mật khẩu&nbsp;<span class="required">*</span></label>
                                                    <span class="password-input">
                                                    	<form:input class="woocommerce-Input woocommerce-Input--text input-text" type="password" path="confirmpass" required="required" placeholder="Mời nhập mật khẩu" />  
                                                    <span class="show-password-input"></span></span>
                                                </p>
												<div class="col-auto d-flex justify-content-center align-items-center">
													<a href="<c:url value="/thong-tin-tai-khoan" />" class="woocommerce-button button woocommerce-form-login__submit" style="width:40%" >Quay lại</a>
													<div style="width:20%"></div>
													<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" style="width:40%" name="" value="">Lưu lại</button>
													
												</div>
                                            </form:form>  


                                        </div>
                                        <!-- /.customer-login-form -->
                                    </div>
                                </div>
                                <!-- .entry-content -->

                            </article>
                            <!-- #post-## -->

                        </main>
                        <!-- #main -->
                    </div>
                    <!-- #primary -->

                </div>
            </div>
            <!-- .col-full -->
        </div>