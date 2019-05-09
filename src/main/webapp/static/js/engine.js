$('#engineMinCost').change(function () {

    var min = document.getElementById("engineMinCost").value;

    if (document.getElementById("engineMaxCost").value !== '') {

        $("#engineMaxCost").attr({
            "min": min,
            "val": min
        });
    }
    $("#engineMinCostHidden").val(min);

});

$('#engineMaxCost').change(function () {

    var min = document.getElementById("engineMaxCost").value;

    if (document.getElementById("engineMinCost").value !== '') {
        $("#engineMinCost").attr({
            "max": min,
            "val": min

        });
    }
    $("#engineMaxCostHidden").val(min);

});

$('#engineMinCapacity').change(function () {

    var min = document.getElementById("engineMinCapacity").value;

    if (document.getElementById("engineMaxCapacity").value !== '') {

        $("#engineMaxCapacity").attr({
            "min": min,
            "val": min
        });
    }
    $("#engineMinCapacityHidden").val(min);

});

$('#engineMaxCapacity').change(function () {

    var min = document.getElementById("engineMaxCapacity").value;
    if (document.getElementById("engineMinCapacity").value !== '') {

        $("#engineMinCapacity").attr({
            "max": min,
            "val": min
        });
    }
    $("#engineMaxCapacityHidden").val(min);

});

$('#engineMinConsumption').change(function () {

    var min = document.getElementById("engineMinConsumption").value;

    if (document.getElementById("engineMaxConsumption").value !== '') {

        $("#engineMaxConsumption").attr({
            "min": min,
            "val": min
        });
    }
    $("#engineMinConsumptionHidden").val(min);

});

$('#engineMaxConsumption').change(function () {

    var min = document.getElementById("engineMaxConsumption").value;

    if (document.getElementById("engineMinConsumption").value !== '') {

        $("#engineMinConsumption").attr({
            "max": min,
            "val": min
        });
    }
    $("#engineMaxConsumptionHidden").val(min);

});


$('#engineMinPower').change(function () {

    var min = document.getElementById("engineMinPower").value;

    if (document.getElementById("engineMaxPower").value !== '') {

        $("#engineMaxPower").attr({
            "min": min,
            "val": min
        });
    }
    $("#engineMinPowerHidden").val(min);

});

$('#engineMaxPower').change(function () {

    var min = document.getElementById("engineMaxPower").value;

    if (document.getElementById("engineMinPower").value !== '') {

        $("#engineMinPower").attr({
            "max": min,
            "val": min
        });
    }
    $("#engineMaxPowerHidden").val(min);

});


$('#engineNameSelect').change(function () {

    var combo = document.getElementById("engineNameSelect");

    $("#engineName").val(combo.options[combo.selectedIndex].value);

});