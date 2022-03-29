<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Kiên  -->
<title>Trang chủ</title>
<body>
	<!-- 
Body Section 
-->
	<div class="row">
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<h3>Thương hiệu</h3>
				<ul class="nav nav-list">
					<c:forEach var="item" items="${ brands }">
						<li><a href="products.html"><span
								class="icon-chevron-right"></span>${ item.brandname }</a></li>
					</c:forEach>


					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
				</ul>
			</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br> <br> <a
						class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img
					src="<c:url value="/assets/user/img/paypal.jpg"/>"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
				<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="<c:url value="/assets/user/img/bootstrap.png"/>"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/AE-1200WHD-1AVDF-399x399.webp"/>"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img
							src="<c:url value="/assets/user/img/bootstrap-template.png"/>"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<div class="well np">
				<div id="myCarousel" class="carousel slide homCar">
					<div class="carousel-inner">
						<c:forEach var="item" items="${ slide }" varStatus="index">
							<c:if test="${ index.first }">
								<div class="item active">
							</c:if>
							<c:if test="${ not index.first }">
								<div class="item">
							</c:if>
							<img style="width: 100%"
								src="<c:url value="/assets/user/img/Slides/${ item.image }"/>"
								alt="bootstrap ecommerce templates">
					</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">&rsaquo;</a>
			</div>
		</div>
		<!--
New Products
-->
		<div class="well well-small">
			<h3>Sản phẩm mới</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newProduct" class="carousel slide">
					<div class="carousel-inner">
						<c:if test="${ newproducts.size() >0 }">
							<div class="item active">
								<ul class="thumbnails">
								<c:forEach var="item" items="${ newproducts }" varStatus="loop">
									<li class="span4">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="chi-tiet-san-pham/${ item.productID }"><img
												src="<c:url value="/assets/user/watch/${ item.image_name }"/>"
												alt=""></a>
											<div class="caption">
												<h5>${ item.name }</h5>
												<h4>
													<a class="defaultBtn" href="product_details.html"
														title="Click to view"><span class="icon-zoom-in"></span></a>
													<a class="shopBtn" href="#" title="add to cart"><span
														class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber
															type="number" groupingUsed="true"
															value="${ item.price*(100-item.sale)/100 }" />đ</span>
												</h4>
											</div>
									</li>
									<c:if test="${ (loop.index +1) %3 ==0 || (loop.index +1) == newproducts.size() }">
											</ul>
										</div>
										<c:if test="${ (loop.index +1) < newproducts.size() }">
											<div class="item">
												<ul class="thumbnails">
										</c:if>
									</c:if>
								</c:forEach>
						</c:if>
					</div>
					<a class="left carousel-control" href="#newProduct"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#newProduct" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
		<!--
	Featured Products
	-->
		<div class="well well-small">
			<h3>
				<a class="btn btn-mini pull-right" href="products.html"
					title="View more">VIew More<span class="icon-plus"></span></a> Sản
				phẩm nổi bật
			</h3>
			<hr class="soften" />
			<div class="row-fluid">
				<div id="newHighlightProduct" class="carousel slide">
					<div class="carousel-inner">
						<c:if test="${ highlight.size() >0 }">
							<div class="item active">
								<ul class="thumbnails">
								<c:forEach var="item" items="${ highlight }" varStatus="loop">
									<li class="span4">
										<div class="thumbnail">
											<a class="zoomTool" href="product_details.html"
												title="add to cart"><span class="icon-search"></span>
												QUICK VIEW</a> <a href="chi-tiet-san-pham/${ item.productID }"><img
												src="<c:url value="/assets/user/watch/${ item.image_name }"/>"
												alt=""></a>
											<div class="caption">
												<h5>${ item.name }</h5>
												<h4>
													<a class="defaultBtn" href="product_details.html"
														title="Click to view"><span class="icon-zoom-in"></span></a>
													<a class="shopBtn" href="#" title="add to cart"><span
														class="icon-plus"></span></a> <span class="pull-right"><fmt:formatNumber
															type="number" groupingUsed="true"
															value="${ item.price*(100-item.sale)/100 }" />đ</span>
												</h4>
											</div>
										</div>
									</li>
									<c:if test="${ (loop.index +1) %3 ==0 || (loop.index +1) == highlight.size() }">
											</ul>
										</div>
										<c:if test="${ (loop.index +1) < highlight.size() }">
											<div class="item">
												<ul class="thumbnails">
										</c:if>
									</c:if>
								</c:forEach>
						</c:if>
					</div>
					<a class="left carousel-control" href="#newHighlightProduct"
					data-slide="prev">&lsaquo;</a> <a class="right carousel-control"
					href="#newHighlightProduct" data-slide="next">&rsaquo;</a>
				</div>
			</div>
		</div>
		<hr>
		<div class="well well-small">
			<a class="btn btn-mini pull-right" href="#">View more <span
				class="icon-plus"></span></a> Danh sách sản phẩm
		</div>
	</div>
	</div>
	<!-- 
Clients 
-->
	<section class="our_client">
		<hr class="soften" />
		<h4 class="title cntr">
			<span class="text">Manufactures</span>
		</h4>
		<hr class="soften" />
		<div class="row">
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/1.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/2.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/3.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/4.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/5.png"/>"></a>
			</div>
			<div class="span2">
				<a href="#"><img alt=""
					src="<c:url value="/assets/user/img/6.png"/>"></a>
			</div>
		</div>
	</section>

</body>