import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  Widget inbutton ;
   CustomElevatedButton({super.key,required this.inbutton});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.white,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: inbutton,
    );
  }
}
