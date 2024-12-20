import 'package:flutter/material.dart';

class real {
  final String imageUrl;
  final String description;

  real({required this.imageUrl, required this.description});
}
List<real> reals = [
  real(imageUrl: 'https://picsum.photos/200/200?random=20', description: 'A beautiful sunset over the mountains with a vibrant orange sky.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=21', description: 'A serene beach with clear blue water and golden sands.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=22', description: 'A lush green forest with sunlight peeking through the trees.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=23', description: 'A bustling city street at night filled with colorful lights and people.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=24', description: 'A majestic waterfall cascading down rocks surrounded by mist.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=25', description: 'A snowy mountain peak with clouds surrounding its summit.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=26', description: 'A calm lake reflecting the surrounding mountains on a clear day.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=27', description: 'A beautiful garden full of colorful flowers in full bloom.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=29', description: 'A quiet village street with quaint houses and blooming trees.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=28', description: 'A close-up shot of a delicate butterfly resting on a flower petal.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=30', description: 'A mesmerizing starry night sky over a calm desert landscape.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=31', description: 'A cozy cabin by a lake surrounded by towering pine trees.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=32', description: 'A picturesque view of a field of golden wheat stretching into the horizon.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=33', description: 'A stunning mountain vista with a river flowing through the valley below.'),
  real(imageUrl: 'https://picsum.photos/200/200?random=34', description: 'A dreamy sunrise over the ocean with soft pink and purple hues in the sky.'),
];


void showImageModal(String imageUrl, String description ,var context ) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          height: 400,
          width: 300,
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
                child: Text(
                  description,
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