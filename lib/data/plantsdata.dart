import 'package:my_plant_application/model/plantlogic.dart';

List<PlantModel> plants = [
  PlantModel(
      id: 1,
      name: 'Snake Plant (Sansevieria)',
      imageUrl: 'assets/images/SnakePlant-Sansevieria.jpg',
      isfavorite: false),
  PlantModel(
      id: 2,
      name: 'Pothos',
      imageUrl: 'assets/images/Pothos.jpg',
      isfavorite: true)
];

plantDetail(List li) {
  for (var i = 0; i < li.length; i++) {
    return li[i];
  }
}
