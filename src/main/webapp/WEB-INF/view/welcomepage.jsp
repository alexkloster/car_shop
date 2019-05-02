<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <title>tecno-tab | home</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="page-container bg-light">
    <div class="content-wrap bg-white">

        <c:choose>
            <c:when test="${NAVIGATION_MODE == null}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/welcome">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarResponsive"
                                    aria-controls="navbarResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/welcome"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/login">Войти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'user'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/userPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarUserResponsive"
                                    aria-controls="navbarUserResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarUserResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/sales"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/payment">Продать авто</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/add">Добавить авто</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/edit-auto">Редактировать авто</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/purchase">Покупки</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'admin'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/adminPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarAdminResponsive"
                                    aria-controls="navbarAdminResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarAdminResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/adminPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/users">Работа с пользователями</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/sales">Статистика</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>

        </c:choose>
<br>
        <c:choose>
            <c:when test="${mode=='MODE_HOME' }">

                <div class="container text-center">
                    <h3>Добро пожаловать в наш автосалон!</h3>
                </div>

                <br>
                <div class="container">

                    <div class="row">
                        <div class="col-lg-6">
                            <p>С 2007 года Автосалон «4КОЛЕСА» — лидер в услуге срочный выкуп
                                автомобилей. Если вам нужно быстро продать автомобиль в Минске
                                или любом другом городе, мы вам поможем.&nbsp; Продать
                                автомобиль дорого — не значит&nbsp; продать его безопасно.
                                Только наш Автосалон гарантирует&nbsp; полную безопасность и
                                легальность сделки при скупке авто. Куплю-продажу автомобилей мы
                                оформляем в соответствии с законодательством.</p>
                            <p><strong>Ждем вас!</strong></p>
                            <p>&nbsp;</p>
                        </div>
                        <div class="col-lg-6">
                            <img src="static/images/main.jpg" alt="Bank" width="100%"/>
                        </div>

                    </div>

                    <hr>


                    <div class="row">
                        <div class="col-lg-6">
                            <img src="static/images/main1.jpg" alt="Bank" width="100%"/>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="text-red">Совершенство в деталях!</h2>
                            <p> При создании нового поколения SKODA Superb на всех этапах от чертежей
                                до производственной линии использовался восхитительный язык дизайна,
                                созданный на основе дизайна концепт-кара VisionC, произведенного компанией SKODA.
                                В результате получилась по-настоящему эффектная модель с ярким, рельефным обликом —
                                отличающаяся сбалансированностью, экспрессивностью и эмоциональной насыщенностью
                                по сравнению с предшественниками.</p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-6">
                            <img src="static/images/main2.jpg" alt="Bank" width="100%"/>
                        </div>
                        <div class="col-lg-6">
                            <h2 class="text-red">Предложение месяца</h2>
                            <p> При создании нового поколения SKODA Superb на всех этапах от чертежей
                                до производственной линии использовался восхитительный язык дизайна,
                                созданный на основе дизайна концепт-кара VisionC, произведенного компанией SKODA.
                                В результате получилась по-настоящему эффектная модель с ярким, рельефным обликом —
                                отличающаяся сбалансированностью, экспрессивностью и эмоциональной насыщенностью
                                по сравнению с предшественниками.</p>
                        </div>
                    </div>
                </div>

            </c:when>

            <c:when test="${mode=='MODE_REGISTER' }">
                <div class="container text-center">
                    <h3>New Registration</h3>
                    <hr>
                    <form class="form-horizontal" method="POST" action="save-user">
                        <input type="hidden" name="id" value="${user.id }"/>
                        <div class="form-group">
                            <label class="control-label col-md-3">Username</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="username"
                                       value="${user.username }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">First Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="firstname"
                                       value="${user.firstname }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Last Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="lastname"
                                       value="${user.lastname }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Age </label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="age"
                                       value="${user.age }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" name="password"
                                       value="${user.password }"/>
                            </div>
                        </div>
                        <div class="form-group ">
                            <input type="submit" class="btn btn-primary" value="Register"/>
                        </div>
                    </form>
                </div>
            </c:when>
            <c:when test="${mode=='ALL_USERS' }">
                <div class="container text-center" id="tasksDiv">
                    <h3>All Users</h3>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>UserName</th>
                                <th>First Name</th>
                                <th>LastName</th>
                                <th>Age</th>
                                <th>Delete</th>
                                <th>Edit</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="user" items="${users }">
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.username}</td>
                                    <td>${user.firstname}</td>
                                    <td>${user.lastname}</td>
                                    <td>${user.age}</td>
                                    <td><a href="/delete-user?id=${user.id }"><span
                                            class="glyphicon glyphicon-trash"></span></a></td>
                                    <td><a href="/edit-user?id=${user.id }"><span
                                            class="glyphicon glyphicon-pencil"></span></a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </c:when>

            <c:when test="${mode=='MODE_UPDATE' }">
                <div class="container text-center">
                    <h3>Update User</h3>
                    <hr>
                    <form class="form-horizontal" method="POST" action="save-user">
                        <input type="hidden" name="id" value="${user.id }"/>
                        <div class="form-group">
                            <label class="control-label col-md-3">Username</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="username"
                                       value="${user.username }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">First Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="firstname"
                                       value="${user.firstname }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Last Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" name="lastname"
                                       value="${user.lastname }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Age </label>
                            <div class="col-md-3">
                                <input type="text" class="form-control" name="age"
                                       value="${user.age }"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" name="password"
                                       value="${user.password }"/>
                            </div>
                        </div>
                        <div class="form-group ">
                            <input type="submit" class="btn btn-primary" value="Update"/>
                        </div>
                    </form>
                </div>
            </c:when>

            <c:when test="${mode=='MODE_LOGIN' }">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-4">
                            <h3>Авторизация</h3>
                            <hr>
                            <form class="form-horizontal" method="POST" action="/login-user">
                                <c:if test="${not empty error }">
                                    <div class="alert alert-danger">
                                        <c:out value="${error }"></c:out>
                                    </div>
                                </c:if>
                                <div class="form-group">
                                    <label class="control-label">Логин</label>
                                    <div>
                                        <input type="text" class="form-control" name="login"
                                               value="${user.login }"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Пароль</label>
                                    <div>
                                        <input type="password" class="form-control" name="password"
                                               value="${user.password }"/>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <input type="submit" class="btn btn-primary" value="Войти"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:when>
        </c:choose>
    </div>


    <br>
    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
            <div class="row">
                <div class="col-lg-4">
                    <div class="copy">© 2019 <span class="nowrap">ЗАО «<a class="spec_decor"
                                                                          href="/welcome">Цептер Банк</a>»</span>
                    </div>
                    <div class="foo_info">
                        Лицензия Национального банка Республики Беларусь N31 от 28 мая 2013 года на осуществление
                        банковской деятельности. <br>
                        <br>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>Информация о банке</h4>
                    <ul class="foo_nav">

                        <li><a href="/jobs" class="undecor">Вакансии</a></li>

                        <li><a href="/requisites" class="undecor">Реквизиты</a></li>

                    </ul>
                    <div class="social_block">
                        <div class="social_block_grid">
                            <a href="https://www.facebook.com/myzepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_facebook.svg" alt="facebook">
                            </a>
                            <a href="https://vk.com/myzepterbank" target="_blank" class="social_block_item">
                                <img src="/static/images/social_vk.svg" alt="vk">
                            </a>
                            <a href="https://www.instagram.com/zepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_instagram.svg" alt="instargram">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>Клиенту</h4>
                    <ul class="foo_nav">

                        <li><a href="/contacts" class="undecor">Контакты</a></li>

                        <li><a href="/offices" class="undecor">Как нас найти</a></li>

                        <li><a href="/welcome" class="undecor">Цептер Онлайн</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>