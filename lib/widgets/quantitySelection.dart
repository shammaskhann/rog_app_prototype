import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class quantitySelection extends StatefulWidget {
  final double price;
  const quantitySelection({Key? key,required this.price}): super(key:key);
  @override
  State<quantitySelection> createState() => _quantitySelectionState();
}
class _quantitySelectionState extends State<quantitySelection> {
  int quantity=1;
  double calculatePrice() {
    return widget.price * quantity;
  }
  //int getQuantity (){return quantity;}
  @override
  Widget build(BuildContext context) {
    double price=calculatePrice();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Price: ${price.toString()}\$ ",style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height:10),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select",style: Theme.of(context).textTheme.labelMedium),
                Text("Quantity",style: Theme.of(context).textTheme.labelLarge),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 50,
              width: 100,

              child:Row(
                children: [
                  InkWell(
                    onLongPress: (){
                      setState(() {
                        quantity=1;
                      });
                    },
                    onTap: (){
                      setState(() {
                        quantity=--quantity;

                      });
                    },
                  child:Container(
                    height: 50,
                    width: 25,
                    color:Colors.red,
                      child: const Icon(
                        Icons.remove,
                        size: 25,
                      )
                  ),
            ),
                  Container(
                    height: 50,
                    width:50,
                    color:Colors.black,
                    child: Center(
                      child: Text("${quantity.toString()}",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white))
                    )
                  ),
                  InkWell(
                    onLongPress: (){
                      setState(() {
                        quantity=50;
                      });
                    },
                    onTap: (){
                      setState(() {
                        quantity=++quantity;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 25,
                      color: Colors.red,
                      child: const Icon(
                        Icons.add,
                        size: 25
                      )
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ],
    );
  }
}
