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
                                <div class="col-lg-4">
                                    <a class="btn btn-primary" href="/engine">Сбросить</a>
                                </div>
                                <div class="col-lg-4 offset-lg-4">
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
            <c:when test="${mode=='MODE_MODELS'}">
                <br>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="float-right">
                                <a class="btn btn-primary" href="/model-new">Добавить новую модель</a>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <form class="form-horizontal col-lg-12" method="POST"
                              action="/model-filter">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label class="control-label col-lg-12">Марка</label>
                                    <form:input type="hidden" path="modelFilter.manufactureName" name="manufactureName"
                                                id="manufactureName"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="manufactureNameSelect">
                                            <option></option>
                                            <c:forEach var="manufacture" items="${manufactures}">
                                                <option value="${manufacture.name}"><c:out
                                                        value="${manufacture.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <label class="control-label col-lg-12">Название</label>
                                    <form:input type="hidden" path="modelFilter.name" name="modelName"
                                                id="modelName"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="modelNameSelect">
                                            <option></option>
                                            <c:forEach var="model" items="${models}">
                                                <option value="${model.name}"><c:out
                                                        value="${model.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <label class="control-label col-lg-12">Тип кузова</label>
                                    <form:input type="hidden" path="modelFilter.vehicleTypeId" name="vehicleTypeId"
                                                id="vehicleTypeId"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="vehicleTypeIdSelect">
                                            <option></option>
                                            <c:forEach var="vehicleType" items="${vehicleTypes}">
                                                ${vehicleType.id}
                                                <option value="${vehicleType.id}"><c:out
                                                        value="${vehicleType.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">

                                <div class="col-lg-3">
                                    <div class="col-lg-12">
                                        <div class="float-right"></div>
                                        <form:input type="hidden" path="modelFilter.minCost"
                                                    name="modelMinCostHidden"
                                                    id="modelMinCostHidden" value="1000"/>
                                        <form:input type="hidden" path="modelFilter.maxCost"
                                                    name="modelMaxCostHidden"
                                                    id="modelMaxCostHidden" value="2000"/>
                                        <label class="control-label col-lg-12">Цена</label>

                                        <label class="control-label col-lg-4" for="modelMinCost">От:</label>
                                        <input id="modelMinCost" type="number" class="col-lg-8" value="10000" min="5000"
                                               max="10000" step="1000" data-suffix="$">

                                        <label class="control-label col-lg-4" for="modelMaxCost">До:</label>
                                        <input id="modelMaxCost" type="number" class="col-lg-8" value="20000" min="5000"
                                               max="600000" step="1000" data-suffix="$">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-lg-4">
                                    <a class="btn btn-primary" href="/model">Сбросить</a>
                                </div>
                                <div class="col-lg-4 offset-lg-4">
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
                                    <th>Марка</th>
                                    <th>Модель</th>
                                    <th>Тип</th>
                                    <th>Цена</th>
                                    <th>Редактировать</th>
                                    <th>Удалить</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="model" items="${models }">
                                    <tr>
                                        <td>${model.manufacture.name}</td>
                                        <td>${model.name}</td>
                                        <td>${model.vehicleType.name}</td>
                                        <td>${model.cost}$</td>
                                        <td><a href="/model-edit?id=${model.id }"><i class="fa fa-edit"></i> </a></td>
                                        <td><a href="/model-delete?id=${model.id }"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>
            <c:when test="${mode=='MODE_AUTOMOBILES'}">
                <br>
                <div class="container">
                    <c:if test="${autoMode=='MODE_AUTOMOBILE'}">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="float-right">
                                    <a class="btn btn-primary" href="/car-new">Добавить новый автомобиль</a>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <br>
                    <div class="card">
                        <div class="card-header" id="filteringBlockHeader">
                            <h5 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#filteringBlock" aria-expanded="true"
                                        aria-controls="filteringBlock">
                                    Фильрация
                                </button>
                            </h5>
                        </div>

                        <div id="filteringBlock" class="collapse" aria-labelledby="filteringBlockHeader"
                             data-parent="#filters">
                            <div class="card-body">
                                <div class="row" id="filters">
                                    <form class="form-horizontal col-lg-12" method="POST"
                                          <c:if test="${autoMode=='MODE_AUTOMOBILE'}">action="/car-filter"</c:if>
                                          <c:if test="${autoMode=='MODE_SELL'}">action="/sell-filter"</c:if>>
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                                            data-target="#collapseModel" aria-expanded="true"
                                                            aria-controls="collapseModel">
                                                        Параметры автомобиля
                                                    </button>
                                                </h5>
                                            </div>

                                            <div id="collapseModel" class="collapse" aria-labelledby="headingOne"
                                                 data-parent="#filters">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <label class="control-label col-lg-12">Марка</label>
                                                            <form:input type="hidden"
                                                                        path="autoFilter.model.manufactureName"
                                                                        name="autoManufactureName"
                                                                        id="autoManufactureName"/>
                                                            <div class="col-lg-12">
                                                                <select class="form-control"
                                                                        id="autoManufactureNameSelect">
                                                                    <option></option>
                                                                    <c:forEach var="manufacture"
                                                                               items="${manufactures}">
                                                                        <option value="${manufacture.name}"><c:out
                                                                                value="${manufacture.name}"/></option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <label class="control-label col-lg-12">Модель</label>
                                                            <form:input type="hidden" path="autoFilter.model.name"
                                                                        name="autoModelName"
                                                                        id="autoModelName"/>
                                                            <div class="col-lg-12">
                                                                <select class="form-control" id="autoModelNameSelect">
                                                                    <option></option>
                                                                    <c:forEach var="model" items="${models}">
                                                                        <option value="${model.name}"><c:out
                                                                                value="${model.name}"/></option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <label class="control-label col-lg-12">Тип кузова</label>
                                                            <form:input type="hidden"
                                                                        path="autoFilter.model.vehicleTypeId"
                                                                        name="autoVehicleTypeId"
                                                                        id="autoVehicleTypeId"/>
                                                            <div class="col-lg-12">
                                                                <select class="form-control"
                                                                        id="autoVehicleTypeIdSelect">
                                                                    <option></option>
                                                                    <c:forEach var="vehicleType"
                                                                               items="${vehicleTypes}">
                                                                        ${vehicleType.id}
                                                                        <option value="${vehicleType.id}"><c:out
                                                                                value="${vehicleType.name}"/></option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="headingTwo">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                                            data-target="#collapseEngine" aria-expanded="true"
                                                            aria-controls="collapseEngine">
                                                        Параметры двигателя
                                                    </button>
                                                </h5>
                                            </div>

                                            <div id="collapseEngine" class="collapse" aria-labelledby="headingTwo"
                                                 data-parent="#filters">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <label class="control-label col-lg-12">Двигатель</label>
                                                            <form:input type="hidden" path="autoFilter.engine.name"
                                                                        name="autoEngineName"
                                                                        id="autoEngineName"/>
                                                            <div class="col-lg-12">
                                                                <select class="form-control" id="autoEngineNameSelect">
                                                                    <option></option>
                                                                    <c:forEach var="engine" items="${engines}">
                                                                        <option value="${engine.name}"><c:out
                                                                                value="${engine.name}"/></option>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="col-lg-12">
                                                                <form:input type="hidden"
                                                                            path="autoFilter.engine.minPower"
                                                                            name="autoMinPowerHidden"
                                                                            id="autoMinPowerHidden" value="100"/>
                                                                <form:input type="hidden"
                                                                            path="autoFilter.engine.maxPower"
                                                                            name="autoMaxPowerHidden"
                                                                            id="autoMaxPowerHidden" value="200"/>
                                                                <label class="control-label col-lg-12">Мощность</label>

                                                                <label class="control-label col-lg-4"
                                                                       for="autoMinPower">От:</label>
                                                                <input id="autoMinPower" type="number" class="col-lg-8"
                                                                       value="100"
                                                                       min="80"
                                                                       max="500" step="10" data-suffix="лс">

                                                                <label class="control-label col-lg-4"
                                                                       for="autoMaxPower">До:</label>
                                                                <input id="autoMaxPower" type="number" class="col-lg-8"
                                                                       value="200"
                                                                       min="80"
                                                                       max="500" step="10" data-suffix="лс">
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="col-lg-12">
                                                                <div class="float-right"></div>
                                                                <form:input type="hidden"
                                                                            path="autoFilter.engine.minConsumption"
                                                                            name="autoMinConsumptionHidden"
                                                                            id="autoMinConsumptionHidden" value="5"/>
                                                                <form:input type="hidden"
                                                                            path="autoFilter.engine.maxConsumption"
                                                                            name="autoMaxConsumptionHidden"
                                                                            id="autoMaxConsumptionHidden" value="10"/>
                                                                <label class="control-label col-lg-12">Расход
                                                                    топлива</label>

                                                                <label class="control-label col-lg-4"
                                                                       for="autoMinConsumption">От:</label>
                                                                <input id="autoMinConsumption" type="number"
                                                                       class="col-lg-8"
                                                                       value="5"
                                                                       min="4"
                                                                       max="20" step="1" data-suffix="л/100км">

                                                                <label class="control-label col-lg-4"
                                                                       for="autoMaxConsumption">До:</label>
                                                                <input id="autoMaxConsumption" type="number"
                                                                       class="col-lg-8"
                                                                       value="10"
                                                                       min="4"
                                                                       max="20" step="1" data-suffix="л/100км">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="headingThree">
                                                <h5 class="mb-0">
                                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                                            data-target="#collapseCost" aria-expanded="true"
                                                            aria-controls="collapseCost">
                                                        Стоимость
                                                    </button>
                                                </h5>
                                            </div>

                                            <div id="collapseCost" class="collapse" aria-labelledby="headingThree"
                                                 data-parent="#filters">
                                                <div class="card-body">
                                                    <div class="row">

                                                        <div class="col-lg-4">
                                                            <div class="col-lg-12">
                                                                <form:input type="hidden" path="autoFilter.minCost"
                                                                            name="autoMinCostHidden"
                                                                            id="autoMinCostHidden" value="1000"/>
                                                                <form:input type="hidden" path="autoFilter.maxCost"
                                                                            name="autoMaxCostHidden"
                                                                            id="autoMaxCostHidden" value="2000"/>
                                                                <label class="control-label col-lg-12">Цена</label>

                                                                <label class="control-label col-lg-4"
                                                                       for="autoMinCost">От:</label>
                                                                <input id="autoMinCost" type="number" class="col-lg-8"
                                                                       value="10000"
                                                                       min="5000"
                                                                       max="10000" step="1000" data-suffix="$">

                                                                <label class="control-label col-lg-4"
                                                                       for="modelMaxCost">До:</label>
                                                                <input id="autoMaxCost" type="number" class="col-lg-8"
                                                                       value="20000"
                                                                       min="5000"
                                                                       max="600000" step="1000" data-suffix="$">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br>

                                        <div class="row">
                                            <div class="col-lg-4">
                                                <a class="btn btn-primary"
                                                   <c:if test="${autoMode=='MODE_AUTOMOBILE'}">href="/car"</c:if>
                                                   <c:if test="${autoMode=='MODE_SELL'}">href="/sell"</c:if>>
                                                    Сбросить
                                                </a>
                                            </div>
                                            <div class="col-lg-4 offset-lg-4">
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
                                    <th>Тип</th>
                                    <th>Двигатель</th>
                                    <th>Мощность</th>
                                    <th>Объем</th>
                                    <th>Расход</th>
                                    <th>Цена</th>
                                    <c:if test="${autoMode=='MODE_AUTOMOBILE'}">
                                        <th>Редактировать</th>
                                        <th>Удалить</th>
                                    </c:if>
                                    <c:if test="${autoMode=='MODE_SELL'}">
                                        <th>Продать</th>
                                    </c:if>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="car" items="${cars }">
                                    <tr>
                                        <td>${car.model.manufacture.name}</td>
                                        <td>${car.model.name}</td>
                                        <td>${car.model.vehicleType.name}</td>
                                        <td>${car.engine.name}</td>
                                        <td>${car.engine.power}лс</td>
                                        <td>${car.engine.capacity}см<sup>3</sup></td>
                                        <td>${car.engine.consumption}л/100км</td>
                                        <td>${car.engine.cost + car.model.cost}$</td>
                                        <c:if test="${autoMode=='MODE_AUTOMOBILE'}">
                                            <td><a href="/car-edit?id=${car.id }"><i class="fa fa-edit"></i> </a>
                                            </td>
                                            <td><a href="/car-delete?id=${car.id }"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </c:if>
                                        <c:if test="${autoMode=='MODE_SELL'}">
                                        <td><a href="/fill-client?carId=${car.id }"><i class="fa fa-shopping-cart"></i></a>
                                            </c:if>
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
            <c:when test="${mode=='MODE_MODEL_EDIT'}">
                <br>
                <div class="container">
                    <div class="col-lg-6 offset-lg-3">
                        <form class="form-horizontal" method="POST" action="/model-save">
                            <div class="col-lg-12">
                                <form:input type="hidden" name="id" path="model.id"/>


                                <label class="control-label col-lg-12">Марка</label>
                                <div class="form-group">

                                    <form:input type="hidden" path="model.manufacture.id" name="manufactureModelId"
                                                id="manufactureModelId"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="manufactureModelSelect">
                                            <option value="${model.manufacture.id}"><c:out
                                                    value="${model.manufacture.name}"/></option>
                                            <c:forEach var="manufacture" items="${manufactures}">
                                                <option value="${manufacture.id}"><c:out
                                                        value="${manufacture.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-md-3">Название</label>
                                    <div class="col-md-12">
                                        <form:input type="text" class="form-control" name="name"
                                                    path="model.name"/>
                                    </div>
                                </div>

                                <div class="form-group">

                                    <label class="control-label col-lg-12">Тип кузова</label>
                                    <form:input type="hidden" path="model.vehicleType.id" name="vehicleTypeModelId"
                                                id="vehicleTypeModelId"/>
                                    <div class="col-lg-12">
                                        <select class="form-control" id="vehicleTypeModelSelect">
                                            <option value="${model.vehicleType.id}"><c:out
                                                    value="${model.vehicleType.name}"/></option>
                                            <c:forEach var="vehicleType" items="${vehicleTypes}">
                                                <option value="${vehicleType.id}"><c:out
                                                        value="${vehicleType.name}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3">Цена</label>
                                    <div class="col-md-12">
                                        <form:input type="number" class="form-control" name="cost"
                                                    path="model.cost" pattern="[0-9]*" min="10000" max="600000"
                                                    step="1000" data-suffix="$"/>
                                    </div>
                                </div>
                                <hr>
                                <br>
                                <br>

                                <div class="form-group ">
                                    <div class="col-lg-6 offset-lg-5">
                                        <input type="submit" class="btn btn-primary" value="Сохранить"
                                               id="saveModel"/>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </c:when>
            <c:when test="${mode=='MODE_AUTOMOBILE_EDIT'}">
                <br>
                <div class="container">
                    <div class="col-lg-6 offset-lg-3">
                        <form class="form-horizontal" method="POST" action="/car-save">
                            <div class="col-lg-12">
                                <form:input type="hidden" name="id" path="car.id"/>


                                <label class="control-label col-lg-12">Модель</label>
                                <div class="form-group">

                                    <form:input type="hidden" path="car.model.id" name="autoModelId"
                                                id="autoModelId"/>
                                    <div class="row">
                                        <div class="col-lg-11">
                                            <select class="form-control" id="autoModelSelect">
                                                <option value="${car.model.id}"><c:out
                                                        value="${car.model.manufacture.name} ${car.model.name}"/></option>
                                                <c:forEach var="model" items="${models}">
                                                    <option value="${model.id}"><c:out
                                                            value="${model.manufacture.name} ${model.name}"/></option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-lg-1">
                                            <button type="button" id="openModelModal" class="btn btn-primary btn-sm"
                                                    data-target="#modelInfoModal" data-toggle="modal">
                                                <i class="fa fa-info"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <br>

                                <label class="control-label col-lg-12">Двигатель</label>
                                <div class="form-group">

                                    <form:input type="hidden" path="car.engine.id" name="autoEngineId"
                                                id="autoEngineId"/>

                                    <div class="row">
                                        <div class="col-lg-11">
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
                                            <button type="button" id="openEngineModal" class="btn btn-primary btn-sm"
                                                    data-target="#engineInfoModal" data-toggle="modal">
                                                <i class="fa fa-info"></i></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group ">
                                    <div class="col-lg-6 offset-lg-5">
                                        <input type="submit" class="btn btn-primary" value="Сохранить"
                                               id="saveAuto"/>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </c:when>
            <c:when test="${mode == 'MODE_FILL_CLIENT'}">
                <div class="container">

                <h4>Оформление покупки автомобиля</h4>
                <div class="sell">
                    <div class="card">
                        <div class="card-header" id="collapsedAuto">
                            <h5 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#collapseSelledAuto" aria-expanded="true"
                                        aria-controls="collapseSelledAuto">
                                    Параметры автомобиля
                                </button>
                            </h5>
                        </div>

                        <div id="collapseSelledAuto" class="collapse" aria-labelledby="collapsedAuto"
                             data-parent="sell">
                            <div class="card-body">
                                <div class="row">
                                    <hr>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Марка</th>
                                                <th>Модель</th>
                                                <th>Тип</th>
                                                <th>Двигатель</th>
                                                <th>Мощность</th>
                                                <th>Объем</th>
                                                <th>Расход</th>
                                                <th>Цена</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>${car.model.manufacture.name}</td>
                                                <td>${car.model.name}</td>
                                                <td>${car.model.vehicleType.name}</td>
                                                <td>${car.engine.name}</td>
                                                <td>${car.engine.power}лс</td>
                                                <td>${car.engine.capacity}см<sup>3</sup></td>
                                                <td>${car.engine.consumption}л/100км</td>
                                                <td>${car.engine.cost + car.model.cost}$</td>

                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="client">
                    <div class="card">
                        <div class="card-header" id="collapsedClientHeader">
                            <h5 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse"
                                        data-target="#collapsedClient" aria-expanded="true"
                                        aria-controls="collapsedClient">
                                    Данные клиента
                                </button>
                            </h5>
                        </div>

                        <div id="collapsedClient" class="collapse show" aria-labelledby="collapsedClientHeader"
                             data-parent="sell">
                            <div class="card-body">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <c:choose>
                                            <c:when test="${client_mode == null}">
                                                <form class="form-horizontal col-lg-12" method="POST"
                                                      action="/find-client?carId=${car.id }">

                                                    <div class="row">
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label class="control-label col-lg-12">Серия
                                                                    паспорта</label>
                                                                <div class="col-lg-8">
                                                                    <input type="text"
                                                                           class="form-control passportSeries"
                                                                           name="passportSeries"
                                                                           value="${client.passportSeries }"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label class="control-label col-lg-10">Номер
                                                                    паспорта</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text"
                                                                           class="form-control passportNumber"
                                                                           name="passportNumber"
                                                                           value="${client.passportNumber }"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <label class="control-label col-lg-10"> </label>
                                                            <div class="form-group col-lg-12">
                                                                <input type="submit" class="btn btn-primary"
                                                                       value="Найти"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </c:when>
                                            <c:when test="${client_mode == 'NEW'}">
                                                <div class="alert alert-info">
                                                    Такого клиента нет, необходимо добавить нового.
                                                </div>
                                                <form class="form-horizontal col-lg-12" method="POST"
                                                      action="/save-client?carId=${car.id}">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="control-label col-lg-12">ФИО
                                                                    клиента</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text" class="form-control"
                                                                           name="name"
                                                                           value="${client.name }"
                                                                           required="true"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="control-label col-lg-10">Серия
                                                                    паспорта</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text"
                                                                           class="form-control passportSeries"
                                                                           name="passportSeries"
                                                                           value="${client.passportSeries }"
                                                                           required="true"/>
                                                                </div>
                                                                <br>
                                                                <label class="control-label col-lg-10">Номер
                                                                    паспорта</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text"
                                                                           class="form-control passportNumber"
                                                                           name="passportNumber"
                                                                           value="${client.passportNumber }"
                                                                           required="true"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="form-group">
                                                                <label class="control-label col-lg-10">Адрес</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text" class="form-control"
                                                                           name="address"
                                                                           value="${client.address }"/>
                                                                </div>
                                                                <br>
                                                                <label class="control-label col-lg-10">Номер
                                                                    Телефона</label>
                                                                <div class="col-lg-12">
                                                                    <input type="text"
                                                                           class="form-control phone"
                                                                           name="phone"
                                                                           value="${client.phone }"
                                                                           required="true"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
                                                                <div class="col-lg-12">
                                                                    <div class="float-right">
                                                                        <input type="submit"
                                                                               class="btn btn-primary"
                                                                               value="Сохранить"/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </c:when>
                                            <c:when test="${client_mode == 'EXISTS'}">
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <form:input path="client.id" type="hidden"
                                                                    name="id"/>
                                                        <label class="control-label col-lg-12">ФИО
                                                            клиента</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="text" class="form-control"
                                                                        name="name"
                                                                        path="client.name"
                                                                        disabled="true"/>
                                                        </div>
                                                        <br>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-lg-10">Серия
                                                            паспорта</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="text" class="form-control"
                                                                        name="passportSeries"
                                                                        path="client.passportSeries"
                                                                        disabled="true"/>
                                                        </div>
                                                        <br>
                                                        <label class="control-label col-lg-10">Номер
                                                            паспорта</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="text" class="form-control"
                                                                        name="passportNumber"
                                                                        path="client.passportNumber"
                                                                        disabled="true"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="form-group">
                                                        <label class="control-label col-lg-10">Адрес</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="text" class="form-control"
                                                                        name="address"
                                                                        path="client.address"
                                                                        disabled="true"/>
                                                        </div>
                                                        <br>
                                                        <label class="control-label col-lg-10">Номер
                                                            Телефона</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="text" class="form-control"
                                                                        name="phone"
                                                                        path="client.phone"
                                                                        disabled="true"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:when>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <c:if test="${client_mode == 'EXISTS'}">
                    <div class="additional">
                        <div class="card">
                            <div class="card-header" id="collapsedAdditionalHeader">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse"
                                            data-target="#collapsedAdditional" aria-expanded="true"
                                            aria-controls="collapsedAdditional">
                                        Дополнительные данные заказа
                                    </button>
                                </h5>
                            </div>

                            <div id="collapsedAdditional" class="collapse show"
                                 aria-labelledby="collapsedAdditionalHeader"
                                 data-parent="sell">
                                <div class="card-body">
                                    <div class="col-lg-12">
                                        <div class="row">
                                            <form class="form-horizontal col-lg-12" method="POST"
                                                  action="/save-order?carId=${car.id }&clientId=${client.id}">
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <div class="form-group">
                                                            <label class="control-label col-lg-10">Vin</label>
                                                            <div class="col-lg-12">
                                                                <form:input type="text" class="form-control"
                                                                            name="vin"
                                                                            path="order.vin"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <label class="control-label col-lg-10">Начало</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="date" class="form-control"
                                                                        name="starDate"
                                                                        path="order.firstDate"
                                                            />
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <label class="control-label col-lg-10">Окончание</label>
                                                        <div class="col-lg-12">
                                                            <form:input type="date" class="form-control"
                                                                        name="endDate"
                                                                        path="order.secondDate"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <div class="col-lg-12">
                                                                <div class="float-right">
                                                                    <input type="submit"
                                                                           class="btn btn-primary"
                                                                           value="Сохранить"/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                </c:if>
            </c:when>
        </c:choose>
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


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/app.js"></script>
<script src="static/js/engine.js"></script>
<script src="static/js/model.js"></script>
<script src="static/js/auto.js"></script>
<script src="static/js/bootstrap-input-spinner.js"></script>
<script src="static/js/dist/jquery.inputmask.bundle.js"></script>

<script>
    $("input[type='number']").inputSpinner()
</script>

</body>
</html>