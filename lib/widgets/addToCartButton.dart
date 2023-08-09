import 'package:flutter/material.dart';
class cartButton extends StatefulWidget {
  const cartButton({super.key});

  @override
  State<cartButton> createState() => _cartButtonState();
}

class _cartButtonState extends State<cartButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.red.shade900,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.red.shade900,
                blurRadius: 1,
                spreadRadius: 0.5,
              )
            ]
        ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Add to Cart",style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.shopping_bag_rounded,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
