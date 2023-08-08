import 'package:flutter/material.dart';
class StButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onTap;
  const StButton({Key? key, required this.title,this.loading=false, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.red.shade800,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: Colors.red.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0,3),
            )
          ]
        ),
        child:Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Check',style: Theme.of(context).textTheme.labelMedium),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            )
          ],
        ))
      ),
    );
  }
}
