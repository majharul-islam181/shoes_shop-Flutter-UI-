import 'package:flutter/material.dart';
import 'package:shoes_shop/core/flutter_icons.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Catagories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(MyFlutterApp.youtube_searched_for),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
