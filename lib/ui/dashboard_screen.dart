import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/widgets/GetStartedButton.dart';

import '../widgets/item_view.dart';
import 'home_screen.dart';

class dashboard_screen extends StatelessWidget {
  const dashboard_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              //fit: StackFit.passthrough,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.5,
                  // height: MediaQuery.of(context).size.height / 1.5,
                  child: AnotherCarousel(
                    boxFit: BoxFit.fill,
                    autoplay: true,
                    animationCurve: Curves.fastOutSlowIn,
                    animationDuration: const Duration(seconds: 1),
                    dotSize: 4.0,
                    dotBgColor: Colors.transparent,
                    images: const [
                      AssetImage('assets/images/mainBanner.jpg'),
                      AssetImage('assets/images/mianBanner1.jpg'),
                      AssetImage('assets/images/mainBanner2.jpg'),
                    ],
                  )
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: StButton(
                    title:'Check',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const homeScreen()));
                    }
                  ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:8.0, left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New',style: Theme.of(context).textTheme.labelLarge),
                      InkWell(child: Text('View All', style: Theme.of(context).textTheme.labelSmall,))
                    ],
                  ),
                  Text(" You've nver seen it before", style: Theme.of(context).textTheme.labelSmall),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        listView(
                        title:"Asus Strix Rtx 4090",
                        Description: "This place is for some Description againest the Prouct",
                        Price: 1699.99,
                        imageLink: 'assets/images/rtx4090.png',
                    ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
