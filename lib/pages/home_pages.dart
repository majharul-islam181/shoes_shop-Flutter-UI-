// ignore_for_file: avoid_unnecessary_containers, unnecessary_string_interpolations
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoes_shop/core/const.dart';
import 'package:shoes_shop/core/flutter_icons.dart';
import 'package:shoes_shop/models/shoe_model.dart';
// ignore_for_file: prefer_const_constructors

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<ShoeModel> shoeList = ShoeModel.list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          MyFlutterApp.menu,
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Catagories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(MyFlutterApp.youtube_searched_for),
                ),
              ],
            ),
          ),
          // const Text('Display horizontal slider'),
          Container(
            width: 200,
            height: 300,
            color: AppColors.blueColor,
          ),

// 
// 
// 
// 
// 
// 


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'JUST FOR YOU',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  'VIEW ALL',
                  style: TextStyle(color: AppColors.greenColor, fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ...shoeList.map((data) => Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 12),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/${data.imgPath}"),
                      width: 90,
                      height: 60,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .9,
                            child: Text(
                              "${data.name}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "${data.brand}",
                            style:
                                TextStyle(color: Colors.black26, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "\$${data.price.toInt()}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 10, 
            color: Colors.black12, 
            spreadRadius: 5)
          ],
        ),
        child: BottomNavigationBar(
            selectedItemColor: AppColors.greenColor,
            unselectedItemColor: Colors.black12,
            currentIndex: 3,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(MyFlutterApp.compass), label: "Data"),
              BottomNavigationBarItem(
                  icon: Icon(MyFlutterApp.shopping_bag), label: "cart"),
              BottomNavigationBarItem(
                  icon: Icon(MyFlutterApp.person), label: "Person"),
              BottomNavigationBarItem(
                  icon: Icon(MyFlutterApp.menu), label: "Menu"),
            ]),
      ),
    );
  }
}
