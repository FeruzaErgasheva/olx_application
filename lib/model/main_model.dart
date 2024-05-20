class Model {
  String imgUrl;
  bool checkTop;
  String title;
  String price;
  bool checkStatus;
  String location;
  String time;
  Model({
    required this.imgUrl,
    required this.checkTop,
    required this.title,
    required this.price,
    required this.checkStatus,
    required this.location,
    required this.time,
  });
}

List<Model> contents = [
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/op2awts0pgqe2-UZ/image;s=1000x700",
    checkTop: true,
    title: "Malibu 2020",
    price: "125 000 сум",
    checkStatus: false,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:27",
  ),
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/zxwm4m63dl6z1-UZ/image;s=1000x700",
    checkTop: true,
    title: " Krossovka nike",
    price: "900 000 сум",
    checkStatus: true,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:29",
  ),
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/gzda00emiq241-UZ/image;s=1000x700",
    checkTop: true,
    title: "4/3/9 ул. Паркентская ",
    price: "124 000 сум",
    checkStatus: false,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:27",
  ),
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/rurfeir64up82-UZ/image;s=1000x700",
    checkTop: false,
    title: "Byd seagull flying 2024",
    price: "56 000 сум",
    checkStatus: true,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:27",
  ),
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/4eszc9n90tyn2-UZ/image;s=1000x700",
    checkTop: true,
    title: "Аренда ЦУМ/СЕНАТ (Ц7) 2/4/4",
    price: "65 000 сум",
    checkStatus: true,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:27",
  ),
  Model(
    imgUrl:
        "https://frankfurt.apollo.olxcdn.com/v1/files/7wwces1utmof2-UZ/image;s=1000x700",
    checkTop: true,
    title: "Дружба новостройка",
    price: "400 000 сум",
    checkStatus: true,
    location: "Ташкент, Учтепинский район",
    time: "Сегодня в 12:27",
  ),
];
