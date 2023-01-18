// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class Fav extends StateNotifier<List<String>> {
//   Fav() : super([]);

//   void addItem(String id) {
//     state = [...state, id];
//   }

//   void removeItem(String id) {
//     state = [
//       for (final i in state)
//         if (i != id) id
//     ];
//   }

//   bool isFav(String id) {
//     var value = state.firstWhere((i) => i == id, orElse: () => "-2");
//     if (value == "-2") {
//       return false;
//     }
//     return true;
//   }
// }

// final favProvider = StateNotifierProvider<Fav, List<String>>((ref) {
//   return Fav();
// });
