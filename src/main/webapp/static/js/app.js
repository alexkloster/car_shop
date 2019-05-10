$('#userSelect').on('change', function () {

    var combo = document.getElementById("userSelect");

    $("#userId").val(combo.options[combo.selectedIndex].value);

});


$('#manufactureSelect').on('change', function () {

    var combo = document.getElementById("manufactureSelect");

    $("#manufactureId").val(combo.options[combo.selectedIndex].value);

});

$('#clientSelect').on('change', function () {

    var combo = document.getElementById("clientSelect");

    $("#clientId").val(combo.options[combo.selectedIndex].value);

});

$('#autoModelSelect').on('change', function () {

    var combo = document.getElementById("autoModelSelect");

    $("#autoModelId").val(combo.options[combo.selectedIndex].value);



});$('#autoEngineSelect').on('change', function () {

    var combo = document.getElementById("autoEngineSelect");

    $("#autoEngineId").val(combo.options[combo.selectedIndex].value);

});


$('#readySelect').on('change', function () {

    var capitalization = document.getElementById("readySelect");

    $("#readyFilter").val(combo.options[combo.selectedIndex].value);

});


$('#readySelect1').on('change', function () {

    var combo = document.getElementById("readySelect");


    var type = combo.options[combo.selectedIndex].value;

    $("#readyFilter1").val(type);

    $.ajax({

        url: "/getCreditType/" + type,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function (resultData) {
            $("#creditSumm").attr({
                "min": resultData.minSum,
                "data-suffix": resultData.currency.currencyName
            });

            $("#creditTerm").attr({
                "min": resultData.term,
                "step": resultData.term
            });
        },
        error: function (jqXHR, textStatus, errorThrown) {
        },

        timeout: 120000
    });

});

$(document).ready(function ($) {
    $(".phone").inputmask({"mask": "+999 (99) 999-99-99"});
    $(".passportNumber").inputmask({"mask": "9999999"});
    $(".passportSeries").inputmask({"mask": "AA"});
    $(".paymentNumber").inputmask({"mask": "999999"});
    $('.date').inputmask('9999-99-99', {placeholder: "yyyy-mm-dd"});
});


function formatDate(date) {
    var monthNames = [
        "янв", "фев", "мар",
        "aпр", "май", "июн", "июл",
        "авг", "сен", "окт",
        "ноя", "дек"
    ];

    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();

    return day + ' ' + monthNames[monthIndex] + ' ' + year;
};


function formatDateFromPattern(date, pattern) {

    var momentDate = moment(date, pattern);
    var d = momentDate.toDate();


    var monthNames = [
        "янв", "фев", "мар",
        "aпр", "май", "июн", "июл",
        "авг", "сен", "окт",
        "ноя", "дек"
    ];

    var day = d.getDate();
    var monthIndex = d.getMonth();
    var year = d.getFullYear();

    return day + ' ' + monthNames[monthIndex] + ' ' + year;


}


//     var max = document.getElementById("engineMaxPower").value;
//
//     $("#engineMaxPower").attr({
//         "max": max
//     });
//     $("#engineMaxPowerHidden").val(min);
//
// });
//
//
