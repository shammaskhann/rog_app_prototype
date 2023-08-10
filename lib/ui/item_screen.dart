import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app_2/widgets/addToCartButton.dart';
import 'package:flutter_app_2/widgets/quantitySelection.dart';
class itemScreen extends StatefulWidget {
  final String title;
  final String description;
  final double price;
  final String imageLink;

  const itemScreen({Key? key,required this.title, required this.description, required this.price,required this.imageLink}): super(key:key);

  @override
  State<itemScreen> createState() => _itemScreenState(title:title,description: description,price: price,imageLink: imageLink);
}

class _itemScreenState extends State<itemScreen> {
  late String title;
  late String description;
  late double price;
  late String imageLink;
  _itemScreenState({required this.title, required this.description, required this.price,required this.imageLink});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
           height: 250,
           width: MediaQuery.of(context).size.width,
           child: AnotherCarousel(
               boxFit: BoxFit.fill,
               autoplay: true,
               animationCurve: Curves.fastOutSlowIn,
               animationDuration: const Duration(seconds: 1),
               dotSize: 4.0,
               dotBgColor: Colors.transparent,
               images: [
                 Image.network('https://dlcdnwebimgs.asus.com/gain/2486AE38-B7C7-443A-9615-FD08D5430992/w1000/h732'),
                 Image.network('https://dlcdnwebimgs.asus.com/gain/AD7D0CB8-7794-451F-8F6C-8FBB2A08ADB9/w1000/h732'),
                 Image.network('https://dlcdnwebimgs.asus.com/gain/0328FE5F-8B02-4C0C-BF08-0BDD713BA40B/w1000/h732'),
                 Image.network('https://dlcdnwebimgs.asus.com/gain/0328FE5F-8B02-4C0C-BF08-0BDD713BA40B/w1000/h732'),
               ]),
         ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right:15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(height:5),
                Text(description,style: Theme.of(context).textTheme.labelSmall,),
                const SizedBox(height:5),
                quantitySelection(price: price),
                //selectShipping();
                cartButton(),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.black38,
    );
  }
}

