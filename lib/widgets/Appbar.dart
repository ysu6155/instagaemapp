import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          const Icon(Icons.lock_open,color: Colors.white,size: 15,),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'youssifshaban',
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
        ],
      ),
      actions: [
        Stack(
          clipBehavior: Clip.none,
          children: [IconButton(
            icon: const Icon(Icons.alternate_email, color: Colors.white),
            onPressed: () {},
          ),
          Positioned(
            left: 20,
            child: Container(
              height: 20,
              width: 30,
              decoration: const BoxDecoration(
                color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Center(child: Text("+9",style: TextStyle(color: Colors.white),)),
            ),
          )
          ]
        ),
        IconButton(
          icon: const Icon(Icons.library_add, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
