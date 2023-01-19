import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/domain/plant.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_plant_application/data/providers/fav_provider.dart';

class ItemCard extends ConsumerStatefulWidget {
  final Plant plant;
  const ItemCard({required this.plant, super.key});

  @override
  ConsumerState<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends ConsumerState<ItemCard> {
 @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          GoRouter.of(context).push("/plant_detail", extra: widget.plant),
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
        child: Card(
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 16,
                        child: Image.network(
                          widget.plant.imageUrl!,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // IconButton(
                      //   splashColor: Colors.blueAccent,
                      //   icon: provider.isExist(PlantModel(
                      //           id: widget.plant.id,
                      //           name: widget.plant.name,
                      //           imageUrl: widget.plant.imageUrl,
                      //           isfavorite: widget.plant.isfavorite))
                      //       ? const Icon(Icons.favorite)
                      //       : const Icon(Icons.favorite_border_outlined),
                      //   color: Color.fromARGB(255, 185, 39, 28),
                      //   onPressed: () {
                      //     provider.toggleFavorite(PlantModel(
                      //         id: widget.plant.id,
                      //         name: widget.plant.name,
                      //         imageUrl: widget.plant.imageUrl,
                      //         isfavorite: widget.plant.isfavorite));
                      //   },
                      // ),
                      FavoriteButton(
                        isFavorite: widget.plant.isfavorite,
                        iconSize: 40,
                        iconColor: btColor,
                        valueChanged: (isFavorite) {
                          widget.plant.isfavorite;
                        },
                      ),
                    ],
                  ),
                ),
                Consumer(builder: (context, WidgetRef ref, __) {
                  ref.watch(favProvider);
                  bool isfav =
                      ref.watch(favProvider.notifier).isFav(widget.plant.id!);

                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          splashColor: Colors.blueAccent,
                          icon: isfav
                              ? const Icon(Icons.favorite)
                              : const Icon(Icons.favorite_border_outlined),
                          color: const Color.fromARGB(255, 185, 39, 28),
                          onPressed: () {
                            if (isfav) {
                              isfav = false;
                            } else {
                              isfav = true;
                            }
                            if (isfav) {
                              ref
                                  .read(favProvider.notifier)
                                  .addItem(widget.plant.id!);
                            } else {
                              ref
                                  .read(favProvider.notifier)
                                  .removeItem(widget.plant.id!);
                            }
                            // provider.toggleFavorite(PlantModel(
                            //     id: widget.plant.id,
                            //     name: widget.plant.name,
                            //     imageUrl: widget.plant.imageUrl,
                            //     isfavorite: widget.plant.isfavorite));
                          },
                        ),
                        // FavoriteButton(
                        //   isFavorite: widget.plant.isfavorite,
                        //   iconSize: 40,
                        //   iconColor: btColor,
                        //   valueChanged: (isFavorite) {
                        //     widget.plant.isfavorite;
                        //   },
                        // ),
                      ],
                    ),
                  );
                }),
              ]),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  widget.plant.name!,
                  style: const TextStyle(
                      color: tColor, fontFamily: 'Inter', fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
