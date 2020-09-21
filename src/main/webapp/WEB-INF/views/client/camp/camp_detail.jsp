<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style>
.select-pointer {
	cursor: pointer
}

 .no-review-content {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: grid; } 

#weatherTable {
	text-align: center;
	font-size: 12px;
	color: #646464;
	width: 350px;
}

.borderbar {
	border-right: 1px solid #cecece;
}

.divisionBorderbar {
	border-color: black;
	border-right: 4px solid #cecece;
}

.test-star span {
	color: #f9b851;
	margin-left: -4px;
	display: inline-block;
	font-size: 14px;
}

.test-star span .rating-count {
	margin-left: 0;
	color: #808996;
	font-weight: 500;
	font-size: 13px;
}

.test-star span .last-star {
	color: #808996;
}

/*        span {
              color:#7B7B7B;
              font-size:11px;
              float:right;
       }    */
.max {
	display: inline;
	padding-left: 5px;
	color: red;
	font-weight: bold;
	font-size: 12px;
}

.min {
	display: inline;
	padding-left: 5px;
	color: blue;
	font-weight: bold;
	font-size: 12px;
}

.date {
	font-size: 18px;
	font-weight: bold;
}

.owl-carousel {
  display: none;
  width: 100%;
  -webkit-tap-highlight-color: transparent;
  /* position relative and z-index fix webkit rendering fonts issue */
  position: relative;
  z-index: 1; }
  .owl-carousel .owl-stage {
    position: relative;
    -ms-touch-action: pan-Y;
    -moz-backface-visibility: hidden;
    /* fix firefox animation glitch */ }
  .owl-carousel .owl-stage:after {
    content: ".";
    display: block;
    clear: both;
    visibility: hidden;
    line-height: 0;
    height: 0; }
  .owl-carousel .owl-stage-outer {
    position: relative;
    overflow: hidden;
    /* fix for flashing background */
    -webkit-transform: translate3d(0px, 0px, 0px); }
  .owl-carousel .owl-wrapper,
  .owl-carousel .owl-item {
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    -webkit-transform: translate3d(0, 0, 0);
    -moz-transform: translate3d(0, 0, 0);
    -ms-transform: translate3d(0, 0, 0); }
  .owl-carousel .owl-item {
    position: relative;
    min-height: 1px;
    float: left;
    -webkit-backface-visibility: hidden;
    -webkit-tap-highlight-color: transparent;
    -webkit-touch-callout: none; }
  .owl-carousel .owl-item img {
    display: block;
    width: 100%; }
  .owl-carousel .owl-nav.disabled,
  .owl-carousel .owl-dots.disabled {
    display: none; }
  .owl-carousel .owl-nav .owl-prev,
  .owl-carousel .owl-nav .owl-next,
  .owl-carousel .owl-dot {
    cursor: pointer;
    cursor: hand;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none; }
  .owl-carousel.owl-loaded {
    display: block; }
  .owl-carousel.owl-loading {
    opacity: 0;
    display: block; }
  .owl-carousel.owl-hidden {
    opacity: 0; }
  .owl-carousel.owl-refresh .owl-item {
    visibility: hidden; }
  .owl-carousel.owl-drag .owl-item {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none; }
  .owl-carousel.owl-grab {
    cursor: move;
    cursor: grab; }
  .owl-carousel.owl-rtl {
    direction: rtl; }
  .owl-carousel.owl-rtl .owl-item {
    float: right; }

/* No Js */
.no-js .owl-carousel {
  display: block; }

/*
 *  Owl Carousel - Animate Plugin
 */
.owl-carousel .animated {
  animation-duration: 1000ms;
  animation-fill-mode: both; }

.owl-carousel .owl-animated-in {
  z-index: 0; }

.owl-carousel .owl-animated-out {
  z-index: 1; }

.owl-carousel .fadeOut {
  animation-name: fadeOut; }

@keyframes fadeOut {
  0% {
    opacity: 1; }
  100% {
    opacity: 0; } }

/*
 * 	Owl Carousel - Auto Height Plugin
 */
.owl-height {
  transition: height 500ms ease-in-out; }

/*
 * 	Owl Carousel - Lazy Load Plugin
 */
.owl-carousel .owl-item .owl-lazy {
  opacity: 0;
  transition: opacity 400ms ease; }

.owl-carousel .owl-item img.owl-lazy {
  transform-style: preserve-3d; }

/*
 * 	Owl Carousel - Video Plugin
 */
.owl-carousel .owl-video-wrapper {
  position: relative;
  height: 100%;
  background: #000; }

.owl-carousel .owl-video-play-icon {
  position: absolute;
  height: 80px;
  width: 80px;
  left: 50%;
  top: 50%;
  margin-left: -40px;
  margin-top: -40px;
  background: url("owl.video.play.png") no-repeat;
  cursor: pointer;
  z-index: 1;
  -webkit-backface-visibility: hidden;
  transition: transform 100ms ease; }

.owl-carousel .owl-video-play-icon:hover {
  -ms-transform: scale(1.3, 1.3);
      transform: scale(1.3, 1.3); }

.owl-carousel .owl-video-playing .owl-video-tn,
.owl-carousel .owl-video-playing .owl-video-play-icon {
  display: none; }

.owl-carousel .owl-video-tn {
  opacity: 0;
  height: 100%;
  background-position: center center;
  background-repeat: no-repeat;
  background-size: contain;
  transition: opacity 400ms ease; }

.owl-carousel .owl-video-frame {
  position: relative;
  z-index: 1;
  height: 100%;
  width: 100%; }

.owl-carousel,.owl-carousel .owl-item{-webkit-tap-highlight-color:transparent;position:relative}.owl-carousel{display:none;width:100%;z-index:1}.owl-carousel .owl-stage{position:relative;-ms-touch-action:pan-Y;-moz-backface-visibility:hidden}.owl-carousel .owl-stage:after{content:".";display:block;clear:both;visibility:hidden;line-height:0;height:0}.owl-carousel .owl-stage-outer{position:relative;overflow:hidden;-webkit-transform:translate3d(0,0,0)}.owl-carousel .owl-item,.owl-carousel .owl-wrapper{-webkit-backface-visibility:hidden;-moz-backface-visibility:hidden;-ms-backface-visibility:hidden;-webkit-transform:translate3d(0,0,0);-moz-transform:translate3d(0,0,0);-ms-transform:translate3d(0,0,0)}.owl-carousel .owl-item{min-height:1px;float:left;-webkit-backface-visibility:hidden;-webkit-touch-callout:none}.owl-carousel .owl-item img{display:block;width:100%}.owl-carousel .owl-dots.disabled,.owl-carousel .owl-nav.disabled{display:none}.no-js .owl-carousel,.owl-carousel.owl-loaded{display:block}.owl-carousel .owl-dot,.owl-carousel .owl-nav .owl-next,.owl-carousel .owl-nav .owl-prev{cursor:pointer;cursor:hand;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel.owl-loading{opacity:0;display:block}.owl-carousel.owl-hidden{opacity:0}.owl-carousel.owl-refresh .owl-item{visibility:hidden}.owl-carousel.owl-drag .owl-item{-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.owl-carousel.owl-grab{cursor:move;cursor:grab}.owl-carousel.owl-rtl{direction:rtl}.owl-carousel.owl-rtl .owl-item{float:right}.owl-carousel .animated{animation-duration:1s;animation-fill-mode:both}.owl-carousel .owl-animated-in{z-index:0}.owl-carousel .owl-animated-out{z-index:1}.owl-carousel .fadeOut{animation-name:fadeOut}@keyframes fadeOut{0%{opacity:1}100%{opacity:0}}.owl-height{transition:height .5s ease-in-out}.owl-carousel .owl-item .owl-lazy{opacity:0;transition:opacity .4s ease}.owl-carousel .owl-item img.owl-lazy{transform-style:preserve-3d}.owl-carousel .owl-video-wrapper{position:relative;height:100%;background:#000}.owl-carousel .owl-video-play-icon{position:absolute;height:80px;width:80px;left:50%;top:50%;margin-left:-40px;margin-top:-40px;background:url(owl.video.play.png) no-repeat;cursor:pointer;z-index:1;-webkit-backface-visibility:hidden;transition:transform .1s ease}.owl-carousel .owl-video-play-icon:hover{-ms-transform:scale(1.3,1.3);transform:scale(1.3,1.3)}.owl-carousel .owl-video-playing .owl-video-play-icon,.owl-carousel .owl-video-playing .owl-video-tn{display:none}.owl-carousel .owl-video-tn{opacity:0;height:100%;background-position:center center;background-repeat:no-repeat;background-size:contain;transition:opacity .4s ease}.owl-carousel .owl-video-frame{position:relative;z-index:1;height:100%;width:100%}
</style>

<!-- ================================
    START BREADCRUMB AREA
================================= -->
<section class="breadcrumb-area listing-detail-breadcrumb">
	<div class="breadcrumb-wrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 position-relative">
					<div class="breadcrumb-content">
						<input type="hidden" name="campName" id="campName" value="${camp.camp_name}">
						<input type="hidden" name="address" id="address" value="${camp.address}">
						<input type="hidden" name="camp_idx" id="camp_idx" value="1">
						<input type="hidden" class="price" name="bbqPrice" id="bbqPrice" value="${camp.bbq_fee}">
						<input type="hidden" id="campIdx" value="${camp.camp_idx}">
						<input type="hidden" id="nextPage" value="${page.nextPage}">
						<input type="hidden" id="pageCount" value="${page.pageCount}">
						<input type="text" id="test3" value="">
						
						<h2 class="breadcrumb__title">${camp.camp_name}</h2>
						<p class="breadcrumb__desc">
							<span class="la la-map-marker"></span> ${camp.address}
						</p>
						<ul class="listing-info mt-3 mb-3">
							<li><button type="button" class="theme-btn border-0">
									<i class="la la-heart-o"></i> save
								</button>
							</li>
							<li>
								<div class="average-ratings">
									<span class="theme-btn button-success">
									
										<i class="la la-star"></i>
										<c:if test="${empty reviewVo}">0.0</c:if>
										${reviewVo.avgStar}
										<input type="hidden" id="avgStar" value="${reviewVo.avgStar}">
									</span> <span><strong>
									<c:if test="${empty reviewVo}">0</c:if>
									${page.listCount}</strong> Reviews</span>
								</div>
							</li>
						</ul>

					</div>
					<!-- end breadcrumb-content -->
					<div class="report-list-items">
						<ul class="listing-info">
							<li></li>
						</ul>
					</div>
					<!-- end report-list-items -->
				</div>
				<!-- end col-lg-12 -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end breadcrumb-wrap -->
	<div class="bread-svg">
		<svg viewBox="0 0 500 150" preserveAspectRatio="none">
            <path
				d="M-4.22,89.30 C280.19,26.14 324.21,125.81 511.00,41.94 L500.00,150.00 L0.00,150.00 Z"></path>
        </svg>
	</div>
	<!-- end bread-svg -->
</section>
<!-- end breadcrumb-area -->
<!-- ================================
    END BREADCRUMB AREA
================================= -->

<!-- ================================
    START SINGLE LISTING AREA
================================= -->
<section class="single-listing-area padding-top-35px">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="single-listing-wrap">
					<h2 class="widget-title">갤러리</h2>
					<div class="title-shape"></div>
					<div class="gallery-carousel padding-top-35px padding-bottom-40px">
						<c:forEach items="${ImgDetailList}" var="campDetailImg">
							<div data-dot="<img src='/images/camp-img/detail/${campDetailImg.fname}'>"class="gallery-item">
								<img src="/images/camp-img/detail/${campDetailImg.fname}" alt="gallery-image">
							</div>
							<!-- end gallery-item -->
						</c:forEach>
						<%-- <div data-dot="<img src='/images/flag11.png'>" class="gallery-item">
                            <img src="/images/flag11.png" alt="gallery-image">
                        </div><!-- end gallery-item --> --%>
					</div>
					<!-- end gallery-carousel -->
					<div class="listing-description padding-bottom-35px">
						<h2 class="widget-title">캠핑장 소개</h2>
						<div class="title-shape"></div>
						<div class="section-heading mt-4">
							<p class="sec__desc font-size-16">${camp.intro}</p>
						</div>
					</div>
					<!-- end 캠핑장 소개 -->

					<div class="feature-listing padding-bottom-20px">
						<h2 class="widget-title">캠핑 사이트</h2>
						<div class="title-shape"></div>

						<!-- 카테고리 -->
						<c:forEach var="sortList" items="${sortNameList}" varStatus="status">
							<!-- 카라반, 글램핑 -->
							<%-- <c:forEach begin="0" end="${sortNameSize}" step="1" varStatus="sortNameList"> --%>
							<%-- <c:forEach items="${sortNameList}" var="sortList"> --%>
							<br />
							<p class=“font-weight-medium” style="font-size: 1.5em">
								<img
									src="data:image/png;base64,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">
								&nbsp;${sortList}

							</p>
							<br />
							<!-- end 카테고리 -->

							<c:forEach items="${list}" varStatus="i">
								<c:forEach items="${list[i.index]}" var="sort">
									<c:if test="${sortList eq sort.sort_name}">
										<c:set var="j" value="${j+1}" />
										<div class="card mb-3 select-pointer"
											onclick="selectSite(${j})">
											<input type="hidden" id="category${j}" value="글램핑" />
											<div class="row no-gutters">
												<div class="col-md-4">
													<img id="img${j}" src="/images/camp-img/sort/${sort.fname}"
														height=200 width=540 class="card-img">
												</div>
												<div class="col-md-8">
													<div class="card-body">
														<h5 id="campZone${j}" class="card-title">
															${sort.site_name}</h5>
														<p class="card-text">
															인원 제한 수 : <strong id="maxPeople${j}">
																${sort.people_num}</strong> <br /> 가격 : <strong id="price${j}"
																class="price">${sort.site_fee}</strong>
																<input id="sort_idx${j}" type="hidden" value="${sort.sort_idx}">
														</p>
														<p class="card-text">
															<small class="text-muted">3분 전에 업데이트 됨</small>
														</p>
													</div>
												</div>
											</div>
										</div>
										<!-- end 카드 -->
									</c:if>
								</c:forEach>
								<!-- end sort -->
							</c:forEach>
						</c:forEach>
						<%--
                        <!-- 카테고리 -->
							<br/><p class=“font-weight-medium” style="font-size:1.5em"> 
								<img src="data:image/png;base64,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">
								&nbsp;카라반
								</p><br/>
						<!-- end 카테고리 -->
							<div class="card mb-3 select-pointer" onclick="selectSite(3)">
							<input type="hidden" id="category3" value="카라반"/>
							  <div class="row no-gutters">
							    <div class="col-md-4">
							       <img id="img3" src="/images/flag11.png" height=200 width=540 class="card-img" >
							    </div>
							    <div class="col-md-8">
							      <div class="card-body">
							        <h5 id="campZone3" class="card-title">Zone - C</h5>
							        <p class="card-text">
							        	인원 제한 수 : <strong id="maxPeople3">6</strong>
							        	<br/>
							        	가격 : <strong id="price3" class="price">20000</strong> 원
							        </p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
							      </div>
							    </div>
							  </div>
							</div> <!-- end 카드 -->
							 --%>
					</div>
					<!-- end 캠핑 사이트 -->

					<div class="feature-listing padding-bottom-20px">
						<h2 class="widget-title">시설 이용</h2>
						<div class="title-shape"></div>
						<ul class="list-items mt-4">
							<c:forEach items="${allConvList}" var="conv">
								<li><i class="la la-check-circle-o color-text font-size-18"></i>
									${conv}</li>
							</c:forEach>
						</ul>
					</div>
					<!-- end 시설 이용 -->

					<div class="listing-map gmaps">
						<h2 class="widget-title">캠핑장 위치</h2>
						<div class="title-shape margin-bottom-35px"></div>
						<div id="map">

<!-- ================================
    START KakaoMap AREA
================================= -->
							<div id="map" style="width: 100%; height: 350px;"></div>
							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5f0aec9df013aa05ae74510780014c2b&libraries=services"></script>
<!-- ================================
   	END KakaoMap AREA
================================= -->

						</div>
					</div>
					<!-- end 캠핑장 위치 -->
					<br />
					<!-- <div class="listing-description padding-bottom-35px"> -->
<!-- ================================
    START Weather AREA
================================= -->
					<h2 id="weather" class="widget-title">날씨</h2>
					<div class="title-shape margin-bottom-35px"></div>
					<!-- weather widget start -->
					<table id="weatherTable">
						<tr align="center">
							<th colspan="4" class="divisionBorderbar"><div id="date0"
									class="date" style="margin-bottom: 10px"></div></th>
							<th colspan="4"><div id="date4" class="date"
									style="margin-bottom: 10px"></div></th>
						</tr>
						<tr>
						<c:forEach begin="0" end="7" step="1" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq 3}">
								<td class="divisionBorderbar">
							</c:when>
							<c:otherwise>
								<td class="borderbar">
							</c:otherwise>
						</c:choose>
								<div id="hour${i.index}">시</div>
								<div id="cicon${i.index}" class="cicon"></div>
								<div>
									기온
									<div id="ctemp${i.index}" class="max chightemp">℃</div>
								</div>
								<div>
									강수 확률
									<div id="pop${i.index}" class="min pop">%</div>
								</div>
							</td>
						</c:forEach>
						</tr>
					</table>
<!-- ================================
   	END Weather AREA
================================= -->
					<!--   </div> -->
					<div class="contact-listing padding-top-40px padding-bottom-40px">
						<h2 class="widget-title">캠핑장 정보</h2>
						<div class="title-shape"></div>
						<div class="info-list margin-top-35px padding-bottom-35px">
							<ul>
								<li class="mb-2"><span><i class="la la-map-marker"></i>
										주소:</span>${camp.address}</li>
								<li class="mb-2"><span><i class="la la-envelope-o"></i>
										이메일:</span><a href="mailto:example@gmail.com">example@gmail.com</a></li>
								<li class="mb-2"><span><i class="la la-phone"></i>
										전화번호:</span><a href="#">${camp.camp_tel}</a></li>
								<li><span><i class="la la-external-link-square"></i>
										웹사이트:</span><a href="#">www.techydevs.com</a></li>
							</ul>
						</div>
						<div class="section-block"></div>
					</div>
					<!-- end 캠핑장 정보 -->

					<div class="review-content-wrap">
						<h2 class="widget-title">리뷰</h2>
						<div class="title-shape"></div>
						<c:if test="${!empty reviewVo}">
						<div class="review-content padding-top-45px padding-bottom-50px">
							<div class="review-rating-summary" style="margin-top: 40px;">
								<div class="review-rating-summary-inner">
									<div class="stats-average__count">
										<span class="stats-average__count-count">${reviewVo.avgStar}</span>
									</div>
									<!-- end stats-average__count -->
									<div class="stats-average__rating">
										<div class="rating-rating d-flex">

											<c:forEach begin="1" end="${reviewVo.fullStarNum}">
												<span class="la la-star"></span>
											</c:forEach>
											<c:if test="${reviewVo.halfStarExist}">
												<span class="la la-star-half-full"></span>
											</c:if>
											<c:forEach begin="1" end="${reviewVo.emptyStarNum}" step="1">
												<span class="la la-star last-star"></span>
											</c:forEach>

										</div>
										<p class="stats-average__rating-rating">
											(${reviewVo.avgStar})</p>
									</div>
									<!-- end stats-average__rating -->
								</div>
								<!-- end review-rating-summary-inner -->
								<div class="course-rating-text">
									<p class="course-rating-text__text">Camp Rating</p>
								</div>
								<!-- end course-rating-text -->
							</div>
							<!-- end review-rating-summary -->
							<div class="review-rating-widget">
							<div id="barchart"></div>
							</div>
							<!-- end review-rating-widget -->
						</div>
						</c:if>
						<c:if test="${empty reviewVo}">
						<div class="no-review-content padding-top-45px padding-bottom-30px">
							
								<span class="la la-weixin" style="margin-left:340px;font-size:60px;margin-bottom:10px;opacity:0.7"></span>
								<span style="margin-left:260px;font-size:18px;margin-bottom:50px"> 작성된 리뷰가 아직 없습니다.</span>
						</div>
						<div class="section-block"></div>
						</c:if>
						
						<!-- end review-content -->
					</div>
					<!-- end review-content-wrap -->
					<c:if test="${reviewVo ne null}">
					<div class="comments-wrap">
						<h2 class="widget-title">리뷰 댓글 (${page.listCount})</h2>
						<div class="title-shape"></div>
						<ul class="comments-list padding-top-40px">
							<li>
								<!-- //////////리뷰///////////// -->
								<div class="reviewList">
									<c:forEach items="${reviewVo.reviewList}" var="reviewList">
										<div class="comment">
											<div class="comment-body">
												<div class="meta-data test-star">
													<span class="comment__author ">${reviewList.nickname}
														<c:forEach begin="1" end="${reviewList.fullStarNum}">
															<span class="la la-star"></span>
														</c:forEach> <c:if test="${reviewList.halfStarExist}">
															<span class="la la-star-half-full"></span>
														</c:if> <c:forEach begin="1" end="${reviewList.emptyStarNum}"
															step="1">
															<span class="la la-star last-star" style="color: #808996"></span>
														</c:forEach>
													</span>
													<c:choose>
														<c:when test="${reviewList.diffDays==0}">
															<span style="color: #808996" class="comment__date">${reviewList.wdate}</span>
															<span class="comment__date">오늘</span>
														</c:when>
														<c:otherwise>
															<span style="color: #808996" class="comment__date">${reviewList.wdate}</span>
															<span class="comment__date">${reviewList.diffDays}일
																전 </span>
														</c:otherwise>
													</c:choose>
												</div>
												<p class="comment-content">${reviewList.content}</p>
											</div>
										</div>
										<!-- end 리뷰댓글 -->
									</c:forEach>
								</div>
							</li>
						</ul>
						<div class="section-block"></div>
						<div class="button-shared padding-top-40px text-center">
							<button id="loadMore" type="button" class="theme-btn border-0">
								<span class="la la-refresh"></span> Load more review
							</button>
						</div>
						<!-- end button-shared -->
					</div>
					</c:if>
					<!-- end comments-wrap -->
				</div>
				<!-- end single-listing-wrap -->
			</div>
			<!-- end col-lg-8 -->


			<div class="col-lg-4">
				<div class="sidebar section-bg">
					<div class="sidebar-widget">
						<div class="author-bio margin-bottom-30px">
							<div class="d-flex align-items-center">
								<!--  <img src="/images/testi-img2.jpg" alt="author-image"> -->
								<div class="author-inner-bio">
									<h4 id="focusHere"
										class="author__title font-weight-bold pb-0 mb-1">${camp.camp_name}</h4>
								</div>
							</div>
						</div>
						<div class="info-list">
							<ul>
								<li class="mb-2"><span><i class="la la-map-marker"></i>
										주소</span></li>
								<li class="mb-2" style="margin-left: 5px">${camp.address}</li>
								<li class="mb-2"><span><i class="la la-phone"></i>
										전화번호</span></li>
								<li class="mb-2" style="margin-left: 5px">${camp.camp_tel}</li>
							</ul>
							</ul>
						</div>
						<div class="section-block-2 margin-top-35px margin-bottom-35px"></div>
						<!-- <div class="btn-box text-center">
                            <a href="user-profile.html" class="theme-btn d-block">
                                <span class="la la-user"></span> view profile
                            </a>
                        </div> -->
					</div>
					<!-- end sidebar-widget -->
					<div class="sidebar-widget date-widget">
						<h3 id="bookingBox" class="widget-title">예약</h3>
						<div class="title-shape"></div>
						<!-- start 선택된 캠핑 띄우기 -->
						<div class="similar-list padding-top-30px">
							<div class="recent-item mb-3">
								<div id="selectedImg" class="recent-img"></div>
								<!-- end recent-img -->
								<div id="selectedBody" class="recentpost-body">
									<h4 class='recent__link'></h4>
									<p class='recent__meta'>
										<span class='color-text font-weight-bold'>선택된 캠핑장이
											없습니다.</span>
									</p>
								</div>
								<!-- end recent-img -->
							</div>
							<!-- end recent-item -->
							<div
								class="check-box-list show-more-item mt-4 mb-4 customize-checkbox">
							</div>
						</div>
						<!-- end 선택된 캠핑 띄우기 -->
						<div class="contact-form-action padding-top-35px">
							<form>
								<div class="form-group">
									<span class="la la-calendar-o form-icon"></span> <input
										id="checkDate" class="date-range form-control"
										style="cursor: pointer" type="text" name="daterange"
										value="${checkIn} - ${checkOut}" readonly />
								</div>
							</form>

						</div>
						<div
							class="booking-content d-flex align-items-center justify-content-between text-center">
							<div class="input-number-group">
								<p>People</p>
								<div class="input-group-button">
									<span class="input-number-decrement">-</span>
								</div>
								<input id="peopleNum" class="input-number peopleNum"
									type="number" value="${peopleNum}" min="0" max="0" readonly="readonly" >
								<div class="input-group-button">
									<span class="input-number-increment">+</span>
								</div>
							</div>
							<!-- end input-number-group -->
						</div>
						<!-- end booking-content -->
						<div class="btn-box text-center padding-top-35px">
							<div id="booking-event" class="theme-btn d-block" onclick="setSessionAndSubmit()">캠핑장을 선택해주세요</div>
						</div>
						<!-- end btn-box -->
					</div>
					<!-- end sidebar-widget -->
				</div>
				<!-- end sidebar -->
			</div>
			<!-- end col-lg-4 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end single-listing-area -->
<!-- ================================
    END SINGLE LISTING  AREA
================================= -->

<!-- ================================
    START CARD AREA
================================= -->
<section class="card-area padding-top-45px padding-bottom-100px">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="section-heading">
					<h2 class="widget-title">주변 관광지</h2>
					<div class="title-shape"></div>
				</div>
				<!-- end section-heading -->
			</div>
			<!-- end col-lg-8 -->
		</div>
		<!-- end row -->
		<div class="row padding-top-40px">
			<div class="col-lg-12">
				<div class="card-carousel card-static owl-loaded owl-carousel">
					<!--forEach 시작할 부분 -->
					<div class="tour"></div>
					<!--forEach 끝날 부분 -->
				</div>
				<!-- end card-carousel -->
			</div>
			<!-- end col-lg-12 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end container -->
</section>
<!-- end card-area -->
<c:forEach begin="0" end="${chart.size()}" varStatus="i" step="1">
	<input type=hidden id="item${i.index}"value='${chart[i.index].item}' >
</c:forEach>

<!-- <form id="location" name="location" method="post" action="./tourist">
<input id="x" name="x" type="text" value=""> 
<input id="y" name="y" type="text" value="">
</form> -->

<%-- <c:forEach items="${tourMap}" var="tourist" begin="0" end="${tourMap.size()}" varStatus="i" step="1">
	<input type="text" value="값1 : ${tourist+i}">
	<input type="text" value="값2 : ${tourist}">
</c:forEach> --%>
<!-- ================================
    END CARD AREA
================================= -->
<!-- ================================
    JAVASCRIPT
================================= -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>

let item =[];
let number =[];
let chart = [];

<c:forEach items="${chart}" var="chart">
item.push("${chart.item}");
number.push("${chart.number}");
</c:forEach> 

	chart.push(item);
	chart.push(number);
	
$(document).ready(function(){
	google.charts.load('current', {'packages':['corechart']}); //api 로딩
    google.charts.setOnLoadCallback(drawChart); //콜백 메소드 등록
    function drawChart(){
    	let dataChart = [['캠핑장 리뷰','비율(%)']];
    	 if(${chart.size()} != 0){
    		for(i=0; i<1  ; i++){
    			for(j=4; j>=0; j--){
    				dataChart.push([chart[i][j],Number(chart[i+1][j])]);
    			}
    		}
    		// alert("dataChart : "+dataChart);
    	}else{
    		dataChart.push(['서버에서 넘어온 데이터가 없어요',1]);
    	}
    	let data = google.visualization.arrayToDataTable(dataChart);//배열을 dataTable형태로 바꿔주는 메소드
    	let view = new google.visualization.DataView(data);//테이블형태인 data를 view로 만들어주는 메소드
    	let option = {
    		colors: ['#f9b851'],
    		title : "Star Rate",
    		width : 500,
    		height : 200,
    		hAxis: {
    	          maxValue: 100,
    	          gridlines: { count: 0 }
    	 	},
    	 	legend: {position: 'bottom'},
    		 chartArea:{
    			 width: '70%'
    		},
    	};
    	let chart3 = new google.visualization.BarChart(document.getElementById('barchart'));
    	chart3.draw(view, option);
    }
})
</script>

<script src="/js/custom-tourist.js"></script>
<script src="/js/kakao-map.js"></script>
<script src="/js/select-site.js"></script>
<script src="/js/camp-detail.js"></script>
<script src="/js/custom-weather.js"></script>

