import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(kToolbarHeight), // تحديد حجم الـ AppBar
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Icon(Icons.lock,color: Colors.white,size: 15,),
          SizedBox(
            width: 8,
          ),
          Text(
            'youssifshaban',
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
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
            icon: Icon(Icons.alternate_email, color: Colors.white),
            onPressed: () {},
          ),
          Positioned(
            left: 20,
            child: Container(
              height: 20,
              width: 30,
              child: Center(child: Text("+9",style: TextStyle(color: Colors.white),)),
              decoration: BoxDecoration(
                color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          )
          ]
        ),
        IconButton(
          icon: Icon(Icons.library_add, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ],
    );
  }
}
