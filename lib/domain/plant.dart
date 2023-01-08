import 'package:flutter_riverpod/flutter_riverpod.dart';

class Plant {
  final String? id;
  final String? name;
  final String? imageUrl;
  bool? isfavorite = false;

  Plant(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isfavorite});

  factory Plant.fromMap(Map<String, dynamic> json) => Plant(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageurl'],
      isfavorite: json['isfav']);

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'imageurl': imageUrl, 'isfav': isfavorite};
  }

  @override
  String toString() {
    return 'Plant{id:$id, name: $name, imageUrl: $imageUrl, isfavorite: $isfavorite}';
  }
}
