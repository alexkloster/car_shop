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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>



</head>
<body>
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                <div class="container">
                    <a class="navbar-brand" href="/userPage">
                        <img src="static/images/logo.png" alt="" height="50">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/sell">Продать авто</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Автомобили
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="/car">Автомобили</a>
                                    <a class="dropdown-item" href="/model">Модели автомобилей</a>
                                    <a class="dropdown-item" href="/engine">Модели двигателей</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/purchase">Мои продажи</a>
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
        <div class="container">
            <c:choose>
                <c:when test="${mode=='MODE_STAT'}">
                    <br>

                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h5 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#collapseModel" aria-expanded="true"
                                        aria-controls="collapseModel">
                                    Параметры фильтрации
                                </button>
                            </h5>
                        </div>

                        <div id="collapseModel" class="collapse" aria-labelledby="headingOne"
                             data-parent="#filters">
                            <div class="card-body">
                                <form class="form-horizontal col-lg-12" method="POST"
                                      action="/filter-orders">
                                    <div class="row">
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
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="control-label col-lg-12">Модель</label>
                                            <form:input type="hidden" path="filtering.auto.model.name"
                                                        name="autoModelId"
                                                        id="autoModelId"/>
                                            <form:input type="hidden" path="filtering.auto.model.manufactureName"
                                                        name="autoManId"
                                                        id="autoManId"/>
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <select class="form-control" id="autoModelSelect">
                                                        <option value="${model.id}"><c:out
                                                                value="${model.manufacture.name} ${model.name}"/></option>
                                                        <c:forEach var="model" items="${models}">
                                                            <option value="${model.id}"><c:out
                                                                    value="${model.manufacture.name} ${model.name}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-lg-1">
                                                    <button type="button" id="openModelModal"
                                                            class="btn btn-primary btn-sm"
                                                            data-target="#modelInfoModal" data-toggle="modal">
                                                        <i class="fa fa-info"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <label class="control-label col-lg-12">Двигатель</label>
                                            <form:input type="hidden" path="filtering.auto.engine.name" name="engineId"
                                                        id="engineId"/>

                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <select class="form-control" id="autoEngineSelect">
                                                        <option value="${car.engine.id}"><c:out
                                                                value="${car.engine.name}"/></option>
                                                        <c:forEach var="engine" items="${engines}">
                                                            <option value="${engine.id}"><c:out
                                                                    value="${engine.name}"/></option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-lg-1">
                                                    <button type="button" id="openEngineModal"
                                                            class="btn btn-primary btn-sm"
                                                            data-target="#engineInfoModal" data-toggle="modal">
                                                        <i class="fa fa-info"></i></button>
                                                </div>
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
                            </div>
                        </div>
                    </div>
<br>
                    <div class="row">
                        <div class="col-lg-4">
                            <button type="button" id="modelStatisticModal" class="btn btn-primary btn-sm"
                                    data-target="#statisticModal" data-toggle="modal">
                                Статистика моделей
                            </button>
                        </div>
                        <div class="col-lg-4">
                            <button type="button" id="engineStatisticModal" class="btn btn-primary btn-sm"
                                    data-target="#statisticModal" data-toggle="modal">
                                Статистика двигателей
                            </button>
                        </div>
                        <div class="col-lg-4 float-right">
                            <button type="button" id="clientStatisticModal" class="btn btn-primary btn-sm"
                                    data-target="#statisticModal" data-toggle="modal">
                                Статистика клиентов
                            </button>
                        </div>
                    </div>


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
                                        <c:if test="${order.ready}">
                                            <td>Готов</td>
                                        </c:if>
                                        <c:if test="${!order.ready}">
                                            <td>Не готов</td>
                                        </c:if>

                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:when>
            </c:choose>
        </div>
    </div>

    <br>
    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
            <div class="col-lg-4">
                <div class="copy">© 2019 <span class="nowrap">ЗАО «<a class="spec_decor"
                                                                      href="/welcome">4 Колеса</a>»</span>
                </div>
                <div class="foo_info">
                    Лицензия  N31 от 28 мая 2013 года на осуществление
                    торговой деятельности. <br>
                    <br>
                </div>
            </div>

            <div class="col-lg-4">
                <h4>Информация о нас</h4>
                <ul class="foo_nav">

                    <li><a href="" class="undecor">Вакансии</a></li>

                    <li><a href="" class="undecor">О нас</a></li>

                </ul>
                <div class="social_block">
                    <div class="social_block_grid">
                        <a href="" target="_blank"
                           class="social_block_item">
                            <img src="/static/images/social_facebook.svg" alt="facebook">
                        </a>
                        <a href="" target="_blank" class="social_block_item">
                            <img src="/static/images/social_vk.svg" alt="vk">
                        </a>
                        <a href="" target="_blank"
                           class="social_block_item">
                            <img src="/static/images/social_instagram.svg" alt="instargram">
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <h4>Клиенту</h4>
                <ul class="foo_nav">

                    <li><a href="/" class="undecor">Контакты</a></li>

                    <li><a href="/" class="undecor">Как нас найти</a></li>

                    <li><a href="/welcome" class="undecor">4 Колеса онлайн</a></li>

                </ul>
            </div>
        </div>
    </footer>
</div>


<div class="modal fade" id="modelInfoModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Информация о модели</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-lg-12"><h5><span id="manufactureModelName"></span></h5></label>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Производитель</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="manufacture"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Тип</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="vehicleType"></span>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Модель</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="model"></span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Цена</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="price"></span><span>$</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="engineInfoModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Информация о двигателе</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <label class="control-label col-lg-12"><h5><span id="engineName"></span></h5></label>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Мощность</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="power"></span><span> лс</span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Объем</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="capacity"></span><span> см<sup>3</sup></span>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-6">
                        <label class="control-label col-lg-12"><h6>Расход топлива</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="consumption"></span><span> л/100км</span>
                            </div>
                        </div>
                        <br>
                        <label class="control-label col-lg-12"><h6>Цена</h6></label>
                        <div class="col-lg-12">
                            <div class="form-group">
                                <span id="cost"></span><span>$</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="statisticModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Статистика продаж <span id="statisticType"></span></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <canvas id="myChart"></canvas>
            </div>
        </div>
    </div>
</div>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/engine.js"></script>
<script src="static/js/model.js"></script>
<script src="static/js/auto.js"></script>
<script src="static/js/userSales.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>
<script src="static/js/dist/jquery.inputmask.bundle.js"></script>

<script>
    $("input[type='number']").inputSpinner()
</script>

</body>
</html>