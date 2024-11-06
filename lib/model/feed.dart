class Feed {
  //User
  final User user;
  //Content
  final Content content;

  Feed({required this.user, required this.content});
}

class Content {
  final String image;
  bool favorite;
  final String likes;
  final String descriptions;

  Content(
      {required this.image,
      this.favorite = false,
      required this.likes,
      required this.descriptions});

  void toggleFavorite() {
    favorite = !favorite;
  }
}

class User {
  final String name;
  final String avatar;
  final String place;

  User({required this.name, required this.avatar, required this.place});
}
