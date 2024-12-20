import 'package:flutter/material.dart';

class Store {
  final String imageUrl;
  final String name;

  Store({required this.imageUrl, required this.name});
}
List<Store> storesData = [
  Store(imageUrl: 'https://picsum.photos/200/200?random=1', name: 'Ahmed'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=2', name: 'Mohamed'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=3', name: 'Sarah'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=4', name: 'Fatima'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=5', name: 'Ali'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=6', name: 'Youssef'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=7', name: 'Maryam'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=8', name: 'Layla'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=9', name: 'Ibrahim'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=10', name: 'Saeed'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=11', name: 'Nora'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=12', name: 'Karim'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=13', name: 'Dua'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=14', name: 'Majed'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=15', name: 'Salma'),
  Store(imageUrl: 'https://picsum.photos/200/200?random=16', name: 'Khaled'),
];

void showStoreModal(String imageUrl, String name ,var context ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 800,
          width: 900,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.black.withOpacity(0.7),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop(); // إغلاق المودل عند الضغط على زر الإغلاق
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}