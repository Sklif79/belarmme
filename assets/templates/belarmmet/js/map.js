$(document).ready(function () {
    /*yandex map*/

    ymaps.ready(function () {
        var myMap = new ymaps.Map('map', {
                center: [53.865273, 27.518568],
                zoom: 16
            }, {
                searchControlProvider: 'yandex#search'
            }),
            myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
                hintContent: 'Беларммет',
                balloonContent: 'г. Минск, ул. Казинца 12A'
            }, {
                // Опции.
                // Необходимо указать данный тип макета.
                iconLayout: 'default#image',
                // Своё изображение иконки метки.
                iconImageHref: '/assets/templates/belarmmet/img/point-map.png',
                // Размеры метки.
                iconImageSize: [30, 42],
                // Смещение левого верхнего угла иконки относительно
                // её "ножки" (точки привязки).
                iconImageOffset: [-3, -42]
            });

        myMap.geoObjects.add(myPlacemark);
    });
});