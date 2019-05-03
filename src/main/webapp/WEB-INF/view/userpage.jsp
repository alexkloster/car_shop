<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>

    <script src="static/js/bootstrap-input-spinner.js"></script>

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
                                <a class="nav-link" href="/sell-auto">Продать авто</a>
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
                                <a class="nav-link" href="/purchase">Покупки</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/sales">Мои продажи</a>
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
            <c:when test="${mode=='MODE_SELL'}">
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
            </c:when>
            <c:when test="${mode=='MODE_ENGINE'}">
                <br>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="float-right">
                                <a class="btn btn-primary" href="/engine-new">Добавить новый двигатель</a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <form class="form-horizontal col-lg-12" method="POST"
                              action="/engines-filter">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label class="control-label col-lg-12">Название</label>
                                    <form:input type="hidden" path="engineFilter.name" name="engineName"
                                                id="engineName"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="engineNameSelect">
                                            <option></option>
                                            <c:forEach var="engine" items="${engines}">
                                                <option value="${engine.name}"><c:out
                                                        value="${engine.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="col-lg-12">
                                        <form:input type="hidden" path="engineFilter.minPower"
                                                    name="engineMinPowerHidden"
                                                    id="engineMinPowerHidden" value="100"/>
                                        <form:input type="hidden" path="engineFilter.maxPower"
                                                    name="engineMaxPowerHidden"
                                                    id="engineMaxPowerHidden" value="200"/>
                                        <label class="control-label col-lg-12">Мощность</label>

                                        <label class="control-label col-lg-4" for="engineMinPower">От:</label>
                                        <input id="engineMinPower" type="number" class="col-lg-8" value="100" min="80"
                                               max="500" step="10" data-suffix="лс">

                                        <label class="control-label col-lg-4" for="engineMaxPower">До:</label>
                                        <input id="engineMaxPower" type="number" class="col-lg-8" value="200" min="80"
                                               max="500" step="10" data-suffix="лс">

                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="col-lg-12">

                                        <form:input type="hidden" path="engineFilter.minCapacity"
                                                    name="engineMinCapacityHidden"
                                                    id="engineMinCapacityHidden" value="1000"/>
                                        <form:input type="hidden" path="engineFilter.maxCapacity"
                                                    name="engineMaxCapacityHidden"
                                                    id="engineMaxCapacityHidden" value="2000"/>
                                        <label class="control-label col-lg-12">Объем</label>

                                        <label class="control-label col-lg-4" for="engineMinCapacity">От:</label>
                                        <input id="engineMinCapacity" type="number" class="col-lg-8" value="1000"
                                               min="1000"
                                               max="4400" step="200" data-suffix="см<sup>3</sup>">

                                        <label class="control-label col-lg-4" for="engineMaxCapacity">До:</label>
                                        <input id="engineMaxCapacity" type="number" class="col-lg-8" value="2000"
                                               min="1000"
                                               max="4400" step="200" data-suffix="см<sup>3</sup>">

                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="col-lg-12">
                                        <div class="float-right"></div>
                                        <form:input type="hidden" path="engineFilter.minConsumption"
                                                    name="engineMinConsumptionHidden"
                                                    id="engineMinConsumptionHidden" value="5"/>
                                        <form:input type="hidden" path="engineFilter.maxConsumption"
                                                    name="engineMaxConsumptionHidden"
                                                    id="engineMaxConsumptionHidden" value="10"/>
                                        <label class="control-label col-lg-12">Расход топлива</label>

                                        <label class="control-label col-lg-4" for="engineMinConsumption">От:</label>
                                        <input id="engineMinConsumption" type="number" class="col-lg-8" value="5"
                                               min="4"
                                               max="20" step="1" data-suffix="л/100км">

                                        <label class="control-label col-lg-4" for="engineMaxConsumption">До:</label>
                                        <input id="engineMaxConsumption" type="number" class="col-lg-8" value="10"
                                               min="4"
                                               max="20" step="1" data-suffix="л/100км">
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="col-lg-12">
                                        <div class="float-right"></div>
                                        <form:input type="hidden" path="engineFilter.minCost"
                                                    name="engineMinCostHidden"
                                                    id="engineMinCostHidden" value="1000"/>
                                        <form:input type="hidden" path="engineFilter.maxCost"
                                                    name="engineMaxCostHidden"
                                                    id="engineMaxCostHidden" value="2000"/>
                                        <label class="control-label col-lg-12">Цена</label>

                                        <label class="control-label col-lg-4" for="engineMinCost">От:</label>
                                        <input id="engineMinCost" type="number" class="col-lg-8" value="1000" min="500"
                                               max="10000" step="100" data-suffix="$">

                                        <label class="control-label col-lg-4" for="engineMaxCost">До:</label>
                                        <input id="engineMaxCost" type="number" class="col-lg-8" value="2000" min="500"
                                               max="10000" step="100" data-suffix="$">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-4 offset-lg-8">
                                    <div class="float-right">
                                        <input type="submit" class="btn btn-primary"
                                               value="Отфильтровать"/>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <br>
                    <div class="row">
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Название</th>
                                    <th>Мощность</th>
                                    <th>Объем</th>
                                    <th>Расход топлива</th>
                                    <th>Цена</th>
                                    <th>Редактировать</th>
                                    <th>Удалить</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="engine" items="${engines }">
                                    <tr>
                                        <td>${engine.name}</td>
                                        <td>${engine.power}лс</td>
                                        <td>${engine.capacity}см<sup>3</sup></td>
                                        <td>${engine.consumption}л/100км</td>
                                        <td>${engine.cost}$</td>
                                        <td><a href="/engine-edit?id=${engine.id }"><i class="fa fa-edit"></i> </a></td>
                                        <td><a href="/engine-delete?id=${engine.id }"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>
            <c:when test="${mode=='MODE_ENGINE_EDIT'}">
                <br>
                <div class="container">
                    <div class="col-lg-6 offset-lg-3">
                        <form class="form-horizontal" method="POST" action="/engine-save">
                            <div class="col-lg-12">
                                <div class="form-horizontal" method="POST" action="/engine-save">
                                    <input type="hidden" name="id" value="${engine.id}"/>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Название</label>
                                        <div class="col-md-12">
                                            <input type="text" class="form-control" name="name"
                                                   value="${engine.name}"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Мощность</label>
                                        <div class="col-md-12">
                                            <input type="number" class="form-control" name="power"
                                                   value="${engine.power}" pattern="[0-9]*" data-suffix="лс"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Объем</label>
                                        <div class="col-md-12">
                                            <input type="number" class="form-control" name="capacity"
                                                   value="${engine.capacity}" pattern="[0-9]*"
                                                   data-suffix="см<sup>3</sup>"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Расход</label>
                                        <div class="col-md-12">
                                            <input type="number" class="form-control" name="consumption"
                                                   value="${engine.consumption}" pattern="[0-9]*"
                                                   data-suffix="л/100км"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Цена</label>
                                        <div class="col-md-12">
                                            <input type="number" class="form-control" name="cost"
                                                   value="${engine.cost}" pattern="[0-9]*" data-suffix="$"/>
                                        </div>
                                    </div>
                                    <hr>
                                    <br>
                                    <br>

                                    <div class="form-group ">
                                        <div class="col-lg-6 offset-lg-5">
                                            <input type="submit" class="btn btn-primary" value="Сохранить"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
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
<script src="static/js/app.js"></script>
<script src="static/js/engine.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>
<script>
    $("input[type='number']").inputSpinner()
</script>

</body>
</html>