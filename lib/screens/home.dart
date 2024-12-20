import 'package:flutter/material.dart';
import 'package:profileapp/screens/insa_home.dart';
import 'package:profileapp/screens/porfilecreen.dart';

import 'serachscreen.dart';


class home extends StatefulWidget {
  @override
   _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<home> with SingleTickerProviderStateMixin {
  late TabController tabController1;


  @override
  void initState() {
    super.initState();
    tabController1 = TabController(length: 5, vsync: this,initialIndex: 0);
  }

  @override
  void dispose() {
    tabController1.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


     body: TabBarView(
          controller: tabController1,
          children: [
            InstaHome(),
            SearchPage(),
            Scaffold(),
            Scaffold(),
            profilescreen(),

          ]),
    bottomNavigationBar:  TabBar(

      dividerHeight: 0,
      controller: tabController1,
      tabs: [
        Tab(icon: Icon(Icons.home_outlined, color: Colors.white),),
        Tab(icon: Icon(Icons.search, color: Colors.white)),
        Tab(icon: Icon(Icons.add_box_outlined, color: Colors.white)),
        Tab(icon: Icon(Icons.movie_creation_outlined, color: Colors.white)),
        Tab(icon:CircleAvatar(
  radius: 12,
    backgroundImage: NetworkImage('https://c.top4top.io/p_327658u7r1.jpg'),


        )),
      ],
    ),

    );
  }
}
