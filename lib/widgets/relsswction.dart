import 'package:flutter/material.dart';
import 'package:profileapp/model/modelreal.dart';


class RelSection extends StatefulWidget {
  const RelSection({super.key});

  @override
  _RelSectionState createState() => _RelSectionState();
}

class _RelSectionState extends State<RelSection> with SingleTickerProviderStateMixin {
  late TabController tabController;


  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          dividerHeight: 0,

          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.apps, color: Colors.white)),
            Tab(icon: Icon(Icons.movie_creation_outlined, color: Colors.white)),
            Tab(icon: Icon(Icons.account_box_outlined, color: Colors.white)),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 400,
          child: TabBarView(
            controller: tabController,
            children: [
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: reals.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      showImageModal(reals[index].imageUrl, reals[index].description,context=this.context);},
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(reals[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Center(child: Text("المتابَعين",style: TextStyle(color: Colors.white),)),
              Center(child: Text("الملف الشخصي",style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
      ],
    );
  }
}
