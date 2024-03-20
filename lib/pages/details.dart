import 'package:flutter/material.dart';
import 'package:viteats/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back, color: Colors.black)),
            const SizedBox(height: 20),
            Image.asset(
              'images/chicken.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              fit: BoxFit.fill,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Chicken', style: AppWidget.HeadlineTextFeildStyle()),
                    Text('Rs. 80', style: AppWidget.semiBoldTextFeildStyle()),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 0) --a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 20.0),
                Text(a.toString(), style: AppWidget.HeadlineTextFeildStyle()),
                const SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            // Row(
            //   children: [
            //     Text('Preparing Time', style: AppWidget.LightTextFeildStyle()),
            //     const SizedBox(width: 5),
            //     const Icon(Icons.alarm, color: Colors.black38),
            //     const SizedBox(width: 5),
            //     Text('30 min', style: AppWidget.LightTextFeildStyle()),
            //   ],
            // )

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(children: [
                Text('Total Price: ', style: AppWidget.boldTextFeildStyle()),
                Text('80 ', style: AppWidget.boldTextFeildStyle()),
              ]),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Add to cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
