import 'package:flutter/material.dart';
import 'package:flutter_app_2/ui/item_screen.dart';
import 'package:flutter_app_2/widgets/quantitySelection.dart';

import '../services/FavItem.dart';

class listView extends StatefulWidget {
  final String title;
  final String Description;
  final double Price;
  final String imageLink;
  const listView(
      {Key? key,
      required this.title,
      required this.Description,
      required this.Price,
      required this.imageLink})
      : super(key: key);

  @override
  State<listView> createState() => _listViewState(
      title: title,
      Description: Description,
      Price: Price,
      imageLink: imageLink);
}

class _listViewState extends State<listView> {
  late String title;
  late String Description;
  late double Price;
  late String imageLink;
  var isFavourite = false;
  var icon;
  FavItems favItems = FavItems();
  _listViewState({
    required this.title,
    required this.Description,
    required this.Price,
    required this.imageLink,
  });
  inFav(isFavourite) {
    if (isFavourite) {
      return Icons.favorite;
    } else {
      return Icons.favorite_border;
    }
  }

  FavItems getFavItem() {
    return favItems;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => itemScreen(
                        title: title,
                        description: Description,
                        price: Price,
                        imageLink: imageLink)));
          },
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              height: 180,
              width: 150,
              child: Column(
                children: [
                  Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(imageLink),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rs: ${Price.toString()}",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isFavourite = !isFavourite;
                                if (isFavourite) {
                                  favItems.addFavItems(
                                      title, Description, Price, imageLink);
                                } else {
                                  favItems.removeFavItems(title);
                                }
                              });
                            },
                            child: Icon(
                              inFav(isFavourite),
                              //icon??Icons.favorite_border,
                              color: Colors.red.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
