import 'package:flutter/material.dart';
import 'package:viteats/pages/details.dart';
import 'package:viteats/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false;
  bool pizza = false;
  bool salad = false;
  bool burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Name !!',
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3),
                    child: const Icon(Icons.shopping_cart),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'VITeats',
                style: AppWidget.HeadlineTextFeildStyle(),
              ),
              Text('Campus Dining Made Easy',
                  style: AppWidget.LightTextFeildStyle()),
              const SizedBox(height: 20.0),
              showItem(),
              const SizedBox(height: 50.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //iteam 1
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Details(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/chicken.jpg',
                                  height: 200,
                                  width: 200,
                                  // fit: BoxFit.cover,
                                ),
                                Text(
                                  'Chicken',
                                  style: AppWidget.boldTextFeildStyle(),
                                ),
                                Text(
                                  'Rs.80',
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),

                    // iteam list 2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Details(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/chicken.jpg',
                                  height: 200,
                                  width: 200,
                                  // fit: BoxFit.cover,
                                ),
                                Text(
                                  'Chicken',
                                  style: AppWidget.boldTextFeildStyle(),
                                ),
                                Text(
                                  'Rs.80',
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // item 3Mashala chickn biryani
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/chicken.jpg',
                          height: 120,
                          width: 120,
                          // fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text(
                                'Mashala Chicken biryani ',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text(
                                'Rs. 110 ',
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // item 4 Mashala chickn biryani
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/chicken.jpg',
                          height: 120,
                          width: 120,
                          // fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text(
                                'Mashala Chicken biryani ',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Text(
                                'Rs. 110 ',
                                style: AppWidget.LightTextFeildStyle(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// home page burgger pizza icons
  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            burger = true;
            pizza = false;
            salad = false;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/burger_png.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = true;
            salad = false;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/pizza.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = false;
            salad = true;
            icecream = false;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/salad.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            burger = false;
            pizza = false;
            salad = false;
            icecream = true;

            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: icecream ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "images/ice-cream.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
