<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                <div class="container">
                    <a class="navbar-brand" href="/adminPage">
                        <img src="static/images/logo.png" alt="" height="60">
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
                                <a class="nav-link" href="/statistic">Статистика</a>
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

            <c:when test="${mode=='MODE_USERS' }">

                <div class="container">
                    <br>
                    <div class="row">
                        <div class="col-lg-6 offset-lg-6">
                            <div class="float-right">
                                <a class="btn btn-primary" href="/new-user">Создать пользователя</a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">

                        <hr>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>ИД</th>
                                    <th>Имя</th>
                                    <th>Логин</th>
                                    <th>Пароль</th>
                                    <th>Роль</th>
                                    <th>Удалить</th>
                                    <th>Изменить</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="user" items="${users }">
                                    <tr>
                                        <td>${user.id}</td>
                                        <td>${user.name}</td>
                                        <td>${user.login}</td>
                                        <td>${user.password}</td>
                                        <td>${user.role}</td>
                                        <td><a href="/delete-user?id=${user.id }"><i class="fa fa-trash"></i></a></td>
                                        <td><a href="/edit-user?id=${user.id }"><i class="fa fa-edit"></i> </a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>


            <c:when test="${mode=='MODE_UPDATE' }">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3">
                            <h3>Созать пользователя</h3>
                            <hr>
                            <form class="form-horizontal" method="POST" action="save-user">
                                <input type="hidden" name="id" value="${user.id}"/>
                                <div class="form-group">
                                    <label class="control-label col-md-3">ФИО</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="name"
                                               value="${user.name}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Логин</label>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="login"
                                               value="${user.login}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Пароль</label>
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name="password"
                                               value="${user.password}"/>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <input type="submit" class="btn btn-primary" value="Сохранить"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </c:when>
            <c:when test="${mode == 'MODE_STAT'}">
                <div class="container">
                    <br>
                    <form class="form-horizontal col-lg-12" method="POST"
                          action="/filter-orders">
                        <div class="row">
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Пользователь</label>
                                <form:input type="hidden" path="filtering.userId" name="userId"
                                            id="userId"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="userSelect">
                                        <option></option>
                                        <c:forEach var="user" items="${users}">
                                            <option value="${user.id}"><c:out
                                                    value="${user.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <br>

                                <label class="control-label col-lg-12">Марка</label>
                                <form:input type="hidden" path="filtering.manufactureId" name="manufactureId"
                                            id="manufactureId"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="manufactureSelect">
                                        <option></option>
                                        <c:forEach var="manufacture" items="${manufactures}">
                                            <option value="${manufacture.id}"><c:out
                                                    value="${manufacture.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>

                            </div>
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Клиент</label>
                                <form:input type="hidden" path="filtering.clientId" name="clientId"
                                            id="clientId"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="clientSelect">
                                        <option></option>
                                        <c:forEach var="client" items="${clients}">
                                            <option value="${client.id}"><c:out
                                                    value="${client.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <br>


                                <label class="control-label col-lg-12">Модель</label>
                                <form:input type="hidden" path="filtering.modelId" name="modelId"
                                            id="modelId"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="modelSelect">
                                        <option></option>
                                        <c:forEach var="model" items="${models}">
                                            <option value="${model.id}"><c:out
                                                    value="${model.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <label class="control-label col-lg-12">Готовность</label>
                                <form:input type="hidden" path="filtering.ready" name="readyFilter"
                                            id="readyFilter"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="readySelect">
                                        <option value="null"></option>
                                        <option value="true"><c:out value="Готов"/></option>
                                        <option value="false"><c:out value="Не готов"/></option>
                                    </select>
                                </div>

                                <br>


                                <label class="control-label col-lg-12">Двигатель</label>
                                <form:input type="hidden" path="filtering.engineId" name="engineId"
                                            id="engineId"/>
                                <div class="col-lg-12">
                                    <select class="form-control" id="engineSelect">
                                        <option></option>
                                        <c:forEach var="engine" items="${engines}">
                                            <option value="${engine.id}"><c:out
                                                    value="${engine.name}"/></option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="row">

                            <div class="col-lg-6 offset-lg-6">
                                <div class="float-right">
                                    <input type="submit" class="btn btn-primary"
                                           value="Отфильтровать"/>
                                </div>
                            </div>
                        </div>
                    </form>

                    <br>
                    <div class="row">

                        <hr>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Марка</th>
                                    <th>Модель</th>
                                    <th>Тип кузова</th>
                                    <th>Двигатель</th>
                                    <th>Цена</th>
                                    <th>Дата заказа</th>
                                    <th>Дата готовности</th>
                                    <th>Продавец</th>
                                    <th>Покупатель</th>
                                    <th>Готовность</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="order" items="${orders }">
                                    <tr>
                                        <td>${order.auto.model.manufacture.name}</td>
                                        <td>${order.auto.model.name}</td>
                                        <td>${order.auto.model.vehicleType.name}</td>
                                        <td>${order.auto.engine.name}</td>
                                        <td>${order.price}</td>
                                        <td><fmt:formatDate value="${order.firstDate}" pattern="dd-MM-yyyy"/></td>
                                        <td><fmt:formatDate value="${order.secondDate}" pattern="dd-MM-yyyy"/></td>
                                        <td>${order.user.name}</td>
                                        <td>${order.client.name}</td>
                                        <td>${order.ready}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
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


<script>
    $("input[type='number']").inputSpinner()
</script>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/js/app.js"></script>
</body>
</html>