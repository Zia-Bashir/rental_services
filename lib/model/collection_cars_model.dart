class CollectionCarModel {
  final String model;
  final String price;
  final String location;
  final String imgUrl;
  final int passengers;
  final String type;
  CollectionCarModel(
      {required this.imgUrl,
      required this.model,
      required this.price,
      required this.location,
      required this.passengers,
      required this.type});
}

List<CollectionCarModel> cars = [
  CollectionCarModel(
    imgUrl: "assets/images/bmw1.jpg",
    model: "BMW Model SE",
    price: "\$20.0/hour",
    location: "M.A Jinnah Road",
    passengers: 4,
    type: "Auto",
  ),
  CollectionCarModel(
    imgUrl: "assets/images/bmw2.jpg",
    model: "BMW Model S",
    price: "\$22.0/hour",
    location: "Akbar Road",
    passengers: 4,
    type: "Auto",
  ),
  CollectionCarModel(
    imgUrl: "assets/images/honda1.jpg",
    model: "Honda Civic",
    price: "\$15.0/hour",
    location: "Gulberg City",
    passengers: 4,
    type: "Manual",
  ),
  CollectionCarModel(
    imgUrl: "assets/images/jaguar1.jpg",
    model: "Jaguar XF",
    price: "\$30.0/hour",
    location: "Faisal Town",
    passengers: 4,
    type: "Auto",
  ),
  CollectionCarModel(
    imgUrl: "assets/images/jaguar2.jpg",
    model: "Jaguar F-Pace",
    price: "\$25.0/hour",
    location: "Okara Cantt",
    passengers: 4,
    type: "Auto",
  ),
];
