import 'package:flutter/material.dart';
import 'package:profileapp/widgets/postinsta.dart';
import 'package:profileapp/widgets/stores.dart';

import '../model/modelpost.dart';

class InstaHome extends StatelessWidget {
  const InstaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            const Text("instagram", style: TextStyle(color: Colors.white)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, color: Colors.white),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.maps_ugc_rounded, color: Colors.white),
              ),
              Positioned(
                left: 20,
                top: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.red[800],
                  radius: 10,
                  child: const Text(
                    "7",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          const Stores(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: posts.length,
            itemBuilder: (BuildContext context, int index) {
             return PostInsta(index: index,);
            },



          ),
        ],
      ),
    );
  }
}
