$('#manufactureNameSelect').change(function () {

    var combo = document.getElementById("manufactureNameSelect");

    $("#manufactureName").val(combo.options[combo.selectedIndex].value);

});

$('#modelNameSelect').change(function () {

    var combo = document.getElementById("modelNameSelect");

    $("#modelName").val(combo.options[combo.selectedIndex].value);

});

$('#vehicleTypeIdSelect').change(function () {

    var combo = document.getElementById("vehicleTypeIdSelect");

    $("#vehicleTypeId").val(combo.options[combo.selectedIndex].value);

});

$('#modelMinCost').change(function () {

    var min = document.getElementById("modelMinCost").value;

    $("#modelMaxCost").attr({
        "min": min,
        "val": min
    });
    $("#modelMinCostHidden").val(min);

});

$('#modelMaxCost').change(function () {

    var min = document.getElementById("modelMaxCost").value;

    $("#modelMinCost").attr({
        "max": min,
        "val": min

    });
    $("#modelMaxCostHidden").val(min);

});

$('#vehicleTypeModelSelect').change(function () {

    var combo = document.getElementById("vehicleTypeModelSelect").value;

    $("#vehicleTypeModelId").val(combo);

});


$('#manufactureModelSelect').change(function () {

    var combo = document.getElementById("manufactureModelSelect").value;

    $("#manufactureModelId").val(combo);

});

$('#saveModel').click(function () {


    $("#manufactureModelId").val(document.getElementById("manufactureModelSelect").value);

    $("#vehicleTypeModelId").val(document.getElementById("vehicleTypeModelSelect").value);

});

