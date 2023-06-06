class DataModel {
  late String name;
  late String img;
  late int price;
  late int people;
  late int stars;
  late String description;
  late String location;

  DataModel(
      {required this.name,
      required this.img,
      required this.price,
      required this.stars,
      required this.description,
      required this.location});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        stars: json["people"],
        description: json["description"],
        location: json["location"]);
  }
}
