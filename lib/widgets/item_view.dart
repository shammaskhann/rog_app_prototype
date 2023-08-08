import 'package:flutter/material.dart';
class listView extends StatefulWidget {
  final  String title;
   final String Description;
  final double Price;
  final String imageLink;
  const listView({Key? key, required this.title, required this.Description, required this.Price, required this.imageLink}): super(key: key);

  @override
  State<listView> createState() => _listViewState(title:title,Description:Description,Price:Price,imageLink:imageLink);
}

class _listViewState extends State<listView> {
  late String title;
  late String Description;
  late double Price;
  late String imageLink;

  _listViewState({
    required this.title,
    required this.Description,
    required this.Price,
    required this.imageLink,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        child:Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          height:180,
          width:150,
          child: Column(
            children: [
               Image.asset(imageLink),
               Padding(
                 padding: const EdgeInsets.only(left:8.0,bottom: 5),
                 child: Text(title,style: Theme.of(context).textTheme.labelMedium,),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Rs: ${Price.toString()}",style: Theme.of(context).textTheme.labelSmall,),
                     Padding(
                       padding: const EdgeInsets.only(right:5.0),
                       child: InkWell(
                         child: Icon(
                           Icons.favorite_border,
                           color: Colors.red.shade900,
                         ),
                       ),
                     ),
                   ],
                 ),
               )
            ],
          )
        )
      ),
    );
  }
}
