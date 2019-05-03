$('#engineMinCost').change(function () {

    var min = document.getElementById("engineMinCost").value;

    $("#engineMaxCost").attr({
        "min": min,
        "val": min
    });
    $("#engineMinCostHidden").val(min);

});

$('#engineMaxCost').change(function () {

    var min = document.getElementById("engineMaxCost").value;

    $("#engineMinCost").attr({
        "max": min,
        "val": min

    });
    $("#engineMaxCostHidden").val(min);

});

$('#engineMinCapacity').change(function () {

    var min = document.getElementById("engineMinCapacity").value;

    $("#engineMaxCapacity").attr({
        "min": min,
        "val": min
    });
    $("#engineMinCapacityHidden").val(min);

});

$('#engineMaxCapacity').change(function () {

    var min = document.getElementById("engineMaxCapacity").value;

    $("#engineMinCapacity").attr({
        "max": min,
        "val": min
    });
    $("#engineMaxCapacityHidden").val(min);

});

$('#engineMinConsumption').change(function () {

    var min = document.getElementById("engineMinConsumption").value;

    $("#engineMaxConsumption").attr({
        "min": min,
        "val": min
    });
    $("#engineMinConsumptionHidden").val(min);

});

$('#engineMaxConsumption').change(function () {

    var min = document.getElementById("engineMaxConsumption").value;

    $("#engineMinConsumption").attr({
        "max": min,
        "val": min
    });
    $("#engineMaxConsumptionHidden").val(min);

});



$('#engineMinPower').change(function () {

    var min = document.getElementById("engineMinPower").value;

    $("#engineMaxPower").attr({
        "min": min,
        "val": min
    });
    $("#engineMinPowerHidden").val(min);

});

$('#engineMaxPower').change(function () {

    var min = document.getElementById("engineMaxPower").value;

    $("#engineMinPower").attr({
        "max": min,
        "val": min
    });
    $("#engineMaxPowerHidden").val(min);

});


$('#engineNameSelect').change(function () {

    var combo = document.getElementById("engineNameSelect");

    $("#engineName").val(combo.options[combo.selectedIndex].value);

});