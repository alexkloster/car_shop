$("#modelStatisticModal").on('click', function () {
    $("#statisticType").text("моделей");
    document.getElementById("ok").name = "modelStatistic"
    });


$("#engineStatisticModal").on('click', function () {
    $("#statisticType").text("двигателей");
    document.getElementById("ok").name = "engineStatistic"

});


$("#clientStatisticModal").on('click', function () {
    $("#statisticType").text("клиентов");
    document.getElementById("ok").name = "clientStatistic"

});

$("#userStatisticModal").on('click', function () {
    $("#statisticType").text("пользователей");
    document.getElementById("ok").name = "userStatistic"

});


$("#ok").on('click', function () {
    var userId = document.getElementById("userSelect").value;
    var url;
    if(document.getElementById("ok").name === "modelStatistic") {
        url = "/getModelStatisticAdmin/" + userId;
    }
    if(document.getElementById("ok").name === "engineStatistic") {
        url = "/getEngineStatisticAdmin/" + userId;

    }
    if(document.getElementById("ok").name === "clientStatistic") {
        url = "/getClientStatisticAdmin/" + userId;

    }
    if(document.getElementById("ok").name === "userStatistic") {
        url = "/getUserStatisticAdmin";

    }
    $.ajax({
        url: url,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(info) {
            var data = {
                datasets:[{
                    data: info.col,
                    backgroundColor:info.color
                }],
                labels: info.name
            };

            var ctx = document.getElementById('myChart').getContext('2d');


            var chart = new Chart(ctx, {
                // The type of chart we want to create
                type: 'doughnut',

                // The data for our dataset

                data:data,

                // Configuration options go here
                options: {}
            });
        }
    });



});
//
//
// $("#engineStatistic").on('click', function () {
//     var userId = document.getElementById("userSelect").value;
//
//     $.ajax({
//         url: "/getEngineStatisticAdmin/" + userId,
//         type: "GET",
//
//         contentType: 'application/json; charset=utf-8',
//         success: function(info) {
//             var data = {
//                 datasets:[{
//                     data: info.col,
//                     backgroundColor:info.color
//                 }],
//                 labels: info.name
//             };
//
//             var ctx = document.getElementById('myChart').getContext('2d');
//
//
//             var chart = new Chart(ctx, {
//                 // The type of chart we want to create
//                 type: 'doughnut',
//
//                 // The data for our dataset
//
//                 data:data,
//
//                 // Configuration options go here
//                 options: {}
//             });
//         }
//     });
// });
//
//
// $("#clientStatistic").on('click', function () {
//     var userId = document.getElementById("userSelect").value;
//
//     $.ajax({
//         url: "/getClientStatisticAdmin/" + userId,
//         type: "GET",
//
//         contentType: 'application/json; charset=utf-8',
//         success: function(info) {
//             var data = {
//                 datasets:[{
//                     data: info.col,
//                     backgroundColor:info.color
//                 }],
//                 labels: info.name
//             };
//
//             var ctx = document.getElementById('myChart').getContext('2d');
//
//
//             var chart = new Chart(ctx, {
//                 // The type of chart we want to create
//                 type: 'doughnut',
//
//                 // The data for our dataset
//
//                 data:data,
//
//                 // Configuration options go here
//                 options: {}
//             });
//         }
//     });
// });
//
// $("#userStatistic").on('click', function () {
//
//     $.ajax({
//         url: "/getUserStatisticAdmin",
//         type: "GET",
//
//         contentType: 'application/json; charset=utf-8',
//         success: function(info) {
//             var data = {
//                 datasets:[{
//                     data: info.col,
//                     backgroundColor:info.color
//                 }],
//                 labels: info.name
//             };
//
//             var ctx = document.getElementById('myChart').getContext('2d');
//
//
//             var chart = new Chart(ctx, {
//                 // The type of chart we want to create
//                 type: 'doughnut',
//
//                 // The data for our dataset
//
//                 data:data,
//
//                 // Configuration options go here
//                 options: {}
//             });
//         }
//     });
// });
//
//
//
