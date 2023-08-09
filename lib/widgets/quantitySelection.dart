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
        const SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select",style: Theme.of(context).textTheme.labelMedium),
                Text("Quantity",style: Theme.of(context).textTheme.labelLarge),
              ],
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
                      if(quantity==1){
                        showDialog(context: context, builder: (ctx)=>
                          AlertDialog(
                            backgroundColor: Colors.black38,
                            icon: Icon(Icons.warning_amber),
                            title: Text("INVALID QUANTITY",style: TextStyle(color: Colors.red.shade900, fontFamily: 'Metro', fontWeight: FontWeight.bold),),
                            content:Text("       Please Select a Valid Quantity",style: TextStyle(color: Colors.red.shade900, fontFamily: 'Metro', fontWeight: FontWeight.normal),),
                            actions: [
                              Center(
                                child: Container(
                                  height:50,
                                  width:100,
                                  child: ElevatedButton(onPressed:(){
                                      Navigator.of(ctx).pop();
                                    },
                                        child: Center(
                                          child: Container(
                                      child: Text("OK",style: TextStyle(color: Colors.black, fontFamily: 'Metro', fontWeight: FontWeight.normal,fontSize: 25),),
                                    ),
                                        )
                                    ),
                                ),
                              ),
                            ],
                          ),
                        );
                        quantity=2;
                      }
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
                      if(quantity==50){
                        showDialog(context: context, builder: (ctx)=> AlertDialog(
                          backgroundColor: Colors.black38,
                          icon: Icon(Icons.add_alert),
                          title: Text("INVALID QUANTITY",style: TextStyle(color: Colors.red.shade900, fontFamily: 'Metro', fontWeight: FontWeight.bold),),
                          content: Text("     Maximum Quantity limit is 50",style: TextStyle(color: Colors.red.shade900, fontFamily: 'Metro', fontWeight: FontWeight.normal),),
                          actions:[
                        Center(
                        child: Container(
                        height:50,
                          width:100,
                          child: ElevatedButton(onPressed:(){
                            Navigator.of(ctx).pop();
                          },
                              child: Center(
                                child: Container(
                                  child: Text("OK",style: TextStyle(color: Colors.black, fontFamily: 'Metro', fontWeight: FontWeight.normal,fontSize: 25),),
                                ),
                              )
                          ),
                        ),
                        ),
                      ],
                        ),
                        );
                        quantity=0;
                      }
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
