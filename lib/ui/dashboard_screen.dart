import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_2/widgets/GetStartedButton.dart';
import '../widgets/item_view.dart';
import 'home_screen.dart';

class dashboard_screen extends StatelessWidget {
  const dashboard_screen({super.key});

  @override
  Widget build(BuildContext context) {
    const String descrip="ROG Strix GeForce RTX® 4090 OC Edition 24GB GDDR6X with DLSS 3 and chart-topping thermal performance "
        "NVIDIA Ada Lovelace Streaming Multiprocessors: Up to 2x performance and power efficiency"
        "4th Generation Tensor Cores: Up to 4x performance with DLSS 3 vs. brute-force rendering"
        "3rd Generation RT Cores: Up to 2X ray tracing performance"
        "OC mode: Boost clock 2640 MHz (OC mode)/ 2610 MHz (Gaming mode)"
        "Axial-tech fans scaled up for 23% more airflow"
        "New patented vapor chamber with milled heatspreader for lower GPU temps"
        "3.5-slot design: massive fin array optimized for airflow from the three Axial-tech fans"
        "Diecast shroud, frame, and backplate add rigidity and are vented to further maximize airflow and heat dissipation"
        "Digital power control with high-current power stages and 15K capacitors to fuel maximum performance"
        "Auto-Extreme precision automated manufacturing for higher reliability"
        "GPU Tweak III software provides intuitive performance tweaking, thermal controls, and system monitoring";
    const String descrip2="Compact and powerful mATX board packed with gaming-oriented features"
        "LGA1151 socket for 6th-gen Intel® Core™ desktop processors."
        "Dual DDR4 3733 (OC) support."
        "Best gaming performance – 5-Way Optimization with Auto-Tuning, 2nd-generation T-Topology and OC design"
        "Best gaming audio – reinvented SupremeFX 2015 with intuitive Sonic Studio II."
        "Best gaming networking – best-in-class Intel® Gigabit Ethernet, LANGuard and GameFirst technology."
        "Best gaming protection – carefully-selected premium components to ensure maximum durability.";
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Clearence',style: Theme.of(context).textTheme.displayLarge,
                      softWrap: true,
                      ),
                      Text('Sale',style: Theme.of(context).textTheme.displayLarge),
                      StButton(
                        title:'Check',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const homeScreen()));
                        }
                      ),
                    ],
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
                        Description: descrip,
                        Price: 1699.99,
                        imageLink: 'assets/images/rtx4090.png',
                    ),
                    listView(
                          title:"Asus Maximus VII Gene II",
                          Description: descrip2,
                          Price: 499.99,
                          imageLink: "assets/images/MaximusVIIgene2.png",
                        ),
                    listView(
                          title:"Asus Strix Rtx 4090",
                          Description: descrip,
                          Price: 1699.99,
                          imageLink: 'assets/images/rtx4090.png',
                        ),
                    listView(
                          title:"Asus Maximus VII Gene II",
                          Description: descrip2,
                          Price: 499.99,
                          imageLink: "assets/images/MaximusVIIgene2.png",
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('New',style: Theme.of(context).textTheme.labelLarge),
                      InkWell(child: Text('View All', style: Theme.of(context).textTheme.labelSmall,))
                    ],
                  ),
                  Text("You've nver seen it before", style: Theme.of(context).textTheme.labelSmall),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        listView(
                          title:"Asus Strix Rtx 4090",
                          Description: descrip,
                          Price: 1699.99,
                          imageLink: 'assets/images/rtx4090.png',
                        ),
                        listView(
                          title:"Asus Maximus VII Gene II",
                          Description: descrip2,
                          Price: 499.99,
                          imageLink: "assets/images/MaximusVIIgene2.png",
                        ),
                        listView(
                          title:"Asus Strix Rtx 4090",
                          Description: descrip,
                          Price: 1699.99,
                          imageLink: 'assets/images/rtx4090.png',
                        ),
                        listView(
                          title:"Asus Maximus VII Gene II",
                          Description: descrip2,
                          Price: 499.99,
                          imageLink: "assets/images/MaximusVIIgene2.png",
                        ),
                      ],
                    ),
                  ),
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
