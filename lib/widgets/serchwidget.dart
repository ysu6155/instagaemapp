import 'package:flutter/material.dart';

class serchwisget extends StatelessWidget {
  int index;
   serchwisget({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 288,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 3 columns
                    crossAxisSpacing: 2.0, // Reduce space between columns to create overlap
                    mainAxisSpacing: 2.0,  // Reduce space between rows
                    childAspectRatio: 1, // Maintain square aspect ratio for the grid items
                  ),
                  itemCount: 4, // You can replace with dynamic data
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to detailed view of post/image
                      },
                      child: Image.network(
                        'https://picsum.photos/300/300?random=${this.index-index}',
                        fit: BoxFit.cover, // Make the image cover the area
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // 3 columns
                    crossAxisSpacing: 2.0, // Reduce space between columns to create overlap
                    mainAxisSpacing: 2.0,  // Reduce space between rows
                    childAspectRatio: .5, // Maintain square aspect ratio for the grid items
                  ),
                  itemCount: 1, // You can replace with dynamic data
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to detailed view of post/image
                      },
                      child: Image.network(
                        'https://picsum.photos/300/300?random=${this.index+8}',
                        fit: BoxFit.cover, // Make the image cover the area
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 288,
          child: Row(
            children: [

              Expanded(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // 3 columns
                    crossAxisSpacing: 2.0, // Reduce space between columns to create overlap
                    mainAxisSpacing: 2.0,  // Reduce space between rows
                    childAspectRatio: .5, // Maintain square aspect ratio for the grid items
                  ),
                  itemCount: 1, // You can replace with dynamic data
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to detailed view of post/image
                      },
                      child: Image.network(
                        'https://picsum.photos/300/300?random=${this.index+12}',
                        fit: BoxFit.cover, // Make the image cover the area
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 3 columns
                    crossAxisSpacing: 2.0, // Reduce space between columns to create overlap
                    mainAxisSpacing: 2.0,  // Reduce space between rows
                    childAspectRatio: 1, // Maintain square aspect ratio for the grid items
                  ),
                  itemCount: 4, // You can replace with dynamic data
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to detailed view of post/image
                      },
                      child: Image.network(
                        'https://picsum.photos/300/300?random=${this.index+index}',
                        fit: BoxFit.cover, // Make the image cover the area
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
