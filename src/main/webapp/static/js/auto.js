$("#openEngineModal").on('click', function () {
    var engine = document.getElementById("autoEngineSelect").value;

    $.ajax({
        url: "/getEngineInfo/" + engine,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function (info) {
            $("#engineName").text(info.name);
            $("#power").text(info.power);
            $("#capacity").text(info.capacity);
            $("#consumption").text(info.consumption);
            $("#cost").text(info.cost);
        }
    });
});

$("#openModelModal").on('click', function () {
    var model = document.getElementById("autoModelSelect").value;

    $.ajax({
        url: "/getModelInfo/" + model,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function (info) {
            $("#manufacture").text(info.manufacture.name);
            $("#vehicleType").text(info.vehicleType.name);
            $("#model").text(info.name);
            $("#price").text(info.cost);
        }
    });
});


$("#saveAuto").on('click', function () {

    $("#autoEngineId").val(document.getElementById("autoEngineSelect").value);

    $("#autoModelId").val(document.getElementById("autoModelSelect").value);


});

$('#autoManufactureNameSelect').change(function () {

    var combo = document.getElementById("autoManufactureNameSelect");

    $("#autoManufactureName").val(combo.options[combo.selectedIndex].value);

});


$('#autoModelNameSelect').change(function () {

    var combo = document.getElementById("autoModelNameSelect");

    $("#autoModelName").val(combo.options[combo.selectedIndex].value);

});

$('#autoVehicleTypeIdSelect').change(function () {

    var combo = document.getElementById("autoVehicleTypeIdSelect");

    $("#autoVehicleTypeId").val(combo.options[combo.selectedIndex].value);

});

$('#autoEngineNameSelect').change(function () {

    var combo = document.getElementById("autoEngineNameSelect");

    $("#autoEngineName").val(combo.options[combo.selectedIndex].value);

});



$('#autoMinPower').change(function () {

    var min = document.getElementById("autoMinPower").value;
    $("#autoMinPowerHidden").val(min);

});

$('#autoMinConsumption').change(function () {

    var min = document.getElementById("autoMinConsumption").value;

    document.getElementById("#autoMinConsumptionHidden").val(min);

});

$('#autoMinCost').change(function () {

    var min = document.getElementById("autoMinCost").value;

    $("#autoMinCostHidden").val(min);

});



$('#autoMaxPower').change(function () {

    var min = document.getElementById("autoMaxPower").value;

    $("#autoMaxPowerHidden").val(min);

});

$('#autoMaxConsumption').change(function () {

    var min = document.getElementById("autoMaxConsumption").value;

    $("#autoMaxConsumptionHidden").val(min);

});

$('#autoMaxCost').change(function () {

    var min = document.getElementById("autoMaxCost").value;

    $("#autoMaxCostHidden").val(min);

});
