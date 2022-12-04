class PlantModel {
  final int id;
  final String name;
  final String imageUrl;
  bool isfavorite;

  PlantModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isfavorite});

  void togglefav() {
    if (isfavorite) {
      isfavorite = false;
    } else {
      isfavorite = true;
    }
  }
}
