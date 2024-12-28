import 'package:flutter/material.dart';
import 'package:profileapp/model/modelpost.dart';

class PostInsta extends StatelessWidget {
  int index;

   PostInsta({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(posts[index].profileImageUrl),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  posts[index].username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Post Image
          Container(
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(posts[index].postImageUrl),
                fit: BoxFit.cover,
              ),
              // borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 10),

          // Action Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white, size: 28),
                onPressed: () {},
              ),
              Text("${posts[index].likes}", style: const TextStyle(color: Colors.white)),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline, color: Colors.white, size: 28),
                onPressed: () {},
              ),
              Text("${posts[index].comments}", style: const TextStyle(color: Colors.white)),
              IconButton(
                icon: const Icon(Icons.send, color: Colors.white, size: 28),
                onPressed: () {},
              ),
              Text("${posts[index].shares}", style: const TextStyle(color: Colors.white)),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.bookmark_border, color: Colors.white, size: 28),
                onPressed: () {},
              ),
            ],
          ),

          // Likes
          Text(
            'Liked by user123 and ${posts[index].likes} others',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),

          // Caption
          Text(
            posts[index].username,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            posts[index].caption,
            style: const TextStyle(color: Colors.white),
          ),

          const SizedBox(height: 5),

          // Comments and Time
          Text(
            'View all ${posts[index].comments} comments',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 5),
          Text(
            posts[index].timeAgo,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
