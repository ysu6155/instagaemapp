class Post {
   String username;
   String profileImageUrl;
   String postImageUrl;
   String caption;
   int likes;
   int comments;
   int shares;
   String timeAgo;


  Post(
      {
    required this.username,
    required this.profileImageUrl,
    required this.postImageUrl,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.timeAgo,

  }

);
}
List<Post> posts = [
  Post(
    username: 'youssifshaban',
    profileImageUrl: 'https://c.top4top.io/p_327658u7r1.jpg',
    postImageUrl: 'https://picsum.photos/600/300?random=1',
    caption: 'Enjoying a beautiful day!',
    likes: 12400,
    comments: 35,
    shares: 1214,
    timeAgo: '2 hours ago',
  ),
  Post(
    username: 'ahmeddev',
    profileImageUrl: 'https://i.pinimg.com/236x/cd/26/fb/cd26fb2ba208f741fbd0a8e5d980b895.jpg',
    postImageUrl: 'https://picsum.photos/600/300?random=2',
    caption: 'Flutter is amazing!',
    likes: 9800,
    comments: 42,
    shares: 500,
    timeAgo: '5 hours ago',
  ),
  Post(
    username: 'noor.coder',
    profileImageUrl: 'https://i.pinimg.com/736x/a9/e9/4e/a9e94ef051fbdbe01659ad201aa9be15.jpg',
    postImageUrl: 'https://picsum.photos/600/300?random=3',
    caption: 'Coding late at night.',
    likes: 6700,
    comments: 28,
    shares: 320,
    timeAgo: '1 day ago',
  ),
  Post(
    username: 'mariamart',
    profileImageUrl: 'https://i.pinimg.com/236x/b4/3a/89/b43a892e3f68c50a5b7ce996aa41a1af.jpg',
    postImageUrl: 'https://picsum.photos/600/300?random=4',
    caption: 'Art is life.',
    likes: 8500,
    comments: 55,
    shares: 712,
    timeAgo: '3 hours ago',
  ),
  Post(
    username: 'osama.tech',
    profileImageUrl: 'https://i.pinimg.com/236x/15/82/9d/15829d026839a7c399b361d1c9f5f838.jpg',
    postImageUrl: 'https://picsum.photos/600/300?random=5',
    caption: 'Tech vibes only.',
    likes: 11200,
    comments: 64,
    shares: 982,
    timeAgo: '4 days ago',
  ),
  Post(
    username: 'zahra.mood',
    profileImageUrl: 'https://picsum.photos/200/200?random=1',
    postImageUrl: 'https://picsum.photos/600/300?random=6',
    caption: 'Exploring new horizons!',
    likes: 5300,
    comments: 22,
    shares: 145,
    timeAgo: '6 hours ago',
  ),
  Post(
    username: 'salma.design',
    profileImageUrl: 'https://picsum.photos/200/200?random=2',
    postImageUrl: 'https://picsum.photos/600/300?random=7',
    caption: 'Creating new designs every day.',
    likes: 6700,
    comments: 51,
    shares: 345,
    timeAgo: '2 hours ago',
  ),
  Post(
    username: 'khaled_malik',
    profileImageUrl: 'https://picsum.photos/200/200?random=3',
    postImageUrl: 'https://picsum.photos/600/300?random=8',
    caption: 'Learning something new every day.',
    likes: 4600,
    comments: 34,
    shares: 212,
    timeAgo: '8 hours ago',
  ),
  Post(
    username: 'layla.creates',
    profileImageUrl: 'https://picsum.photos/200/200?random=4',
    postImageUrl: 'https://picsum.photos/600/300?random=9',
    caption: 'Building my dreams.',
    likes: 7200,
    comments: 63,
    shares: 432,
    timeAgo: '1 day ago',
  ),
  Post(
    username: 'hassan.tech',
    profileImageUrl: 'https://picsum.photos/200/200?random=5',
    postImageUrl: 'https://picsum.photos/600/300?random=10',
    caption: 'Tech enthusiast forever!',
    likes: 12500,
    comments: 77,
    shares: 1100,
    timeAgo: '3 days ago',
  ),
];
