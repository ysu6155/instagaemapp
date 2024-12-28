import 'package:flutter/material.dart';
import 'package:profileapp/model/modelstres.dart';


class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 120, // تغيير ارتفاع الـ Container
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: storesData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
            showStoreModal(storesData[index].imageUrl, storesData[index].name,context= this.context);},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(
                        top: 5,
                        left: 5,// المسافة من أعلى الـ Stack
                        child: CircleAvatar(

                        radius: 35, // يمكن تغيير الـ radius هنا
                        backgroundImage: NetworkImage(storesData[index].imageUrl),
                                            ),
                      )
                    ]
                  ),
                  const SizedBox(height: 5),
                  Text(
                    storesData[index].name,
                    style: const TextStyle(color: Colors.white, fontSize: 14), // تغيير حجم النص
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
