var app= angular.module("springDemo", []);

app.controller("AppCtrl", function ($scope, $http) {
    $scope.websites = [];

    $http.get('http://localhost:8082/news/list').success(function (data) {
        $scope.websites = data;
    });
});


// app.controller("AppCtrl", function ($scope) {
//     $scope.websites = [{
//         iconImageUrl: '',
//         id: 'stackoverflow',
//         website: 'stackowerflow.com',
//         title: 'Stackoverflow website',
//         description: 'Stackoverflow description'
//     }];
//
// });