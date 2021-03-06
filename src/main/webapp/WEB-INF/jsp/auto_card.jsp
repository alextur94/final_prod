<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.epam.jwd.dao.model.account.Role"%>

<fmt:setLocale value="${not empty sessionScope.lang ? sessionScope.lang : 'en'}"/>
<fmt:setBundle basename="locale" var="loc"/>

<fmt:message bundle="${loc}" key="butMenu" var="butMenu"/>
<fmt:message bundle="${loc}" key="butHome" var="butHome"/>
<fmt:message bundle="${loc}" key="butCars" var="butCars"/>
<fmt:message bundle="${loc}" key="lCar" var="lCar"/>
<fmt:message bundle="${loc}" key="butContacts" var="butContacts"/>
<fmt:message bundle="${loc}" key="butAboutUs" var="butAboutUs"/>
<fmt:message bundle="${loc}" key="butLogin" var="butLogin"/>
<fmt:message bundle="${loc}" key="brand" var="brand"/>
<fmt:message bundle="${loc}" key="model" var="model"/>
<fmt:message bundle="${loc}" key="year" var="year"/>
<fmt:message bundle="${loc}" key="level" var="level"/>
<fmt:message bundle="${loc}" key="economy" var="economy"/>
<fmt:message bundle="${loc}" key="standard" var="standard"/>
<fmt:message bundle="${loc}" key="business" var="business"/>
<fmt:message bundle="${loc}" key="sport" var="sport"/>
<fmt:message bundle="${loc}" key="body" var="body"/>
<fmt:message bundle="${loc}" key="sedan" var="sedan"/>
<fmt:message bundle="${loc}" key="hatchback" var="hatchback"/>
<fmt:message bundle="${loc}" key="svu" var="svu"/>
<fmt:message bundle="${loc}" key="stationWagon" var="station_wagon"/>
<fmt:message bundle="${loc}" key="compartment" var="compartment"/>
<fmt:message bundle="${loc}" key="minivan" var="minivan"/>
<fmt:message bundle="${loc}" key="pickup" var="pickup"/>
<fmt:message bundle="${loc}" key="limousine" var="limousine"/>
<fmt:message bundle="${loc}" key="van" var="van"/>
<fmt:message bundle="${loc}" key="cabriolet" var="cabriolet"/>
<fmt:message bundle="${loc}" key="transMan" var="transMan"/>
<fmt:message bundle="${loc}" key="transAuto" var="transAuto"/>
<fmt:message bundle="${loc}" key="transmissionAuto" var="transmissionAuto"/>
<fmt:message bundle="${loc}" key="color" var="color"/>
<fmt:message bundle="${loc}" key="white" var="white"/>
<fmt:message bundle="${loc}" key="black" var="black"/>
<fmt:message bundle="${loc}" key="gray" var="gray"/>
<fmt:message bundle="${loc}" key="red" var="red"/>
<fmt:message bundle="${loc}" key="blue" var="blue"/>
<fmt:message bundle="${loc}" key="yellow" var="yellow"/>
<fmt:message bundle="${loc}" key="orange" var="orange"/>
<fmt:message bundle="${loc}" key="green" var="green"/>
<fmt:message bundle="${loc}" key="pink" var="pink"/>
<fmt:message bundle="${loc}" key="violet" var="violet"/>
<fmt:message bundle="${loc}" key="brown" var="brown"/>
<fmt:message bundle="${loc}" key="engineVolume" var="engineVolume"/>
<fmt:message bundle="${loc}" key="doors" var="doors"/>
<fmt:message bundle="${loc}" key="available" var="available"/>
<fmt:message bundle="${loc}" key="tPriceDay" var="tPriceDay"/>
<fmt:message bundle="${loc}" key="tPriceHour" var="tPriceHour"/>
<fmt:message bundle="${loc}" key="valPrice" var="valPrice"/>
<fmt:message bundle="${loc}" key="butRent" var="butRent"/>
<fmt:message bundle="${loc}" key="butLogin" var="butLogin"/>
<fmt:message bundle="${loc}" key="notAvailable" var="notAvailable"/>
<fmt:message bundle="${loc}" key="inputToRent" var="inputToRent"/>
<fmt:message bundle="${loc}" key="butAccount" var="butAccount"/>
<fmt:message bundle="${loc}" key="butLogout" var="butLogout"/>

<html>
<head>
    <title>${lCar} ${car.brand} ${car.model}</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/my/card.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/my/page-cars.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/aos.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body style="background-color: #1d2124">

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/controller?command=main_page">Car<span>Rent</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> ${butMenu}
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a href="${pageContext.request.contextPath}/controller?command=main_page" class="nav-link">${butHome}</a></li>
                    <li class="nav-item active"><a href="${pageContext.request.contextPath}/controller?command=cars_page" class="nav-link">${butCars}</a></li>
                    <c:choose>
                        <c:when test="${empty sessionScope.role}">
                            <li class="nav-item"><a href="${pageContext.request.contextPath}/controller?command=login_page" class="nav-link">${butLogin}</a></li>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${sessionScope.role eq Role.USER}">
                                    <li class="nav-item"><a href="${pageContext.request.contextPath}/controller?command=user_panel_page" class="nav-link">${butAccount}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li class="nav-item"><a href="${pageContext.request.contextPath}/controller?command=admin_panel_page" class="nav-link">${butAccount}</a></li>
                                </c:otherwise>
                            </c:choose>
                            <li class="nav-item"><a href="${pageContext.request.contextPath}/controller?command=logout" class="nav-link">${butLogout}</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container" style="margin-top: 100px">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-11">
                <div class="row">
                    <div class="col-md-7">
                        <div class="cssSlider">
                            <ul class="slides">
                                <li id="slide1"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/1.jpg?auto=format&fit=crop&w=665&q=60"/>
                                </li>
                                <li id="slide2"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/2.jpg?auto=format&fit=crop&w=665&q=60"/>
                                </li>
                                <li id="slide3"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/3.jpg?auto=format&fit=crop&w=665&q=60"/>
                                </li>
                            </ul>
                            <ul class="thumbnails">
                                <li><a href="#slide1"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/1.jpg?auto=format&fit=crop&w=665&q=60"/></a>
                                </li>
                                <li><a href="#slide2"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/2.jpg?auto=format&fit=crop&w=665&q=60"/></a>
                                </li>
                                <li><a href="#slide3"><img
                                        src="${pageContext.request.contextPath}/assets/images/cars/${carId}/3.jpg?auto=format&fit=crop&w=665&q=60"/></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div>
                            <div>${car.brand} ${car.model}</div>
                            <div>${year}: ${car.year}</div>
                            <div>${transmissionAuto}:
                                <c:choose>
                                    <c:when test="${car.transmission eq 0}">${transMan}</c:when>
                                    <c:when test="${car.transmission eq 1}">${transAuto}</c:when>
                                </c:choose>
                            </div>
                            <div>${doors}: ${car.doors}</div>
                            <div>${color}:
                                <c:choose>
                                    <c:when test="${car.color eq 'white'}">${white}</c:when>
                                    <c:when test="${car.color eq 'black'}">${black}</c:when>
                                    <c:when test="${car.color eq 'gray'}">${gray}</c:when>
                                    <c:when test="${car.color eq 'red'}">${red}</c:when>
                                    <c:when test="${car.color eq 'blue'}">${blue}</c:when>
                                    <c:when test="${car.color eq 'yellow'}">${yellow}</c:when>
                                    <c:when test="${car.color eq 'orange'}">${orange}</c:when>
                                    <c:when test="${car.color eq 'violet'}">${violet}</c:when>
                                    <c:when test="${car.color eq 'green'}">${green}</c:when>
                                    <c:when test="${car.color eq 'pink'}">${pink}</c:when>
                                    <c:when test="${car.color eq 'brown'}">${brown}</c:when>
                                </c:choose></div>
                            <div>${tPriceDay}: ${price.pricePerDay}0 ${valPrice}</div>
                            <div>${tPriceHour}: ${price.pricePerHour}0 ${valPrice}</div>
                        </div>
                        <c:choose>
                            <c:when test="${car.available eq 1 && sessionScope.role eq Role.USER}">
                                <a href="${pageContext.request.contextPath}/controller?command=order_panel_page&carId=${car.id}&price_per_day=${price.pricePerDay}"
                                   class="btn btn-outline-success">${butRent}</a>
                            </c:when>
                            <c:when test="${car.available eq 1 && empty sessionScope.role}">
                                <p style="color: #71dd8a">${inputToRent}</p>
                                <a href="${pageContext.request.contextPath}/controller?command=login_page"
                                   class="btn btn-outline-success">${butLogin}</a>
                            </c:when>
                            <c:when test="${car.available eq 1 && sessionScope.role eq Role.ADMIN }">
                            </c:when>
                            <c:otherwise>
                                <a href="#" onclick="return false">${notAvailable}</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00"/>
        </svg>
    </div>

    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.easing.1.3.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.stellar.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/aos.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.animateNumber.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.timepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="${pageContext.request.contextPath}/assets/js/google-map.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>

