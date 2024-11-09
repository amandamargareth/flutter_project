class Feed {
  final int id;
  //User
  final User user;
  //Content
  final Content content;

  Feed({required this.id, required this.user, required this.content});
}

class Content {
  final String image;
  bool isLike;
  bool bookmark;
  final String likes;
  final String descriptions;

  Content(
      {required this.image,
      required this.isLike,
      required this.bookmark,
      required this.likes,
      required this.descriptions});
}

class User {
  final String name;
  final String avatar;
  final String place;

  User({required this.name, required this.avatar, required this.place});
}
