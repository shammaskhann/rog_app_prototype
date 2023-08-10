import 'package:flutter/src/material/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/services/FavItem.dart';

class favItemScreen extends StatelessWidget {
  const favItemScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var title = 'Favourite';
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Favourite', style: Theme.of(context).textTheme.labelMedium),
            const Icon(Icons.favorite),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Your Favourite Items',
              style: Theme.of(context).textTheme.labelLarge),
          // ListView.builder(
          //   itemCount: FavItems.allFavItems.length,
          //   itemBuilder: (context, index) {
          //     leading:
          //     Image.asset(FavItems.allFavItems[index]['imageLink']);
          //     title:
          //     Text(FavItems.allFavItems[index]['title']);
          //     subtitle:
          //     Text(FavItems.allFavItems[index]['description']);
          //     trailing:
          //     Text(FavItems.allFavItems[index]['price']);
          //   },
          // )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
