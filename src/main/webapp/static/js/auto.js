$("#openEngineModal").on('click', function () {
    var engine = document.getElementById("autoEngineSelect").value;

    $.ajax({
        url: "/getEngineInfo/" + engine,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(info) {
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
        success: function(info) {
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


