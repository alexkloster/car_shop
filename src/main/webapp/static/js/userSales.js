$("#modelStatisticModal").on('click', function () {
    $("#statisticType").text("моделей");
    $.ajax({
        url: "/getModelStatistic",
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


$("#engineStatisticModal").on('click', function () {
    $("#statisticType").text("двигателей");
    $.ajax({
        url: "/getEngineStatistic",
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


$("#clientStatisticModal").on('click', function () {
    $("#statisticType").text("клиентов");
    $.ajax({
        url: "/getClientStatistic",
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

