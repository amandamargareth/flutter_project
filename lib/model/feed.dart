class Feed {
  //User
  final User user;
  //Content
  final Content content;

  Feed({
    required this.user, 
    required this.content
  });
}

class Content {
  final String image;
  final String likes;
  final String descriptions;

  Content({
    required this.image, 
    required this.likes, 
    required this.descriptions
  });
}

class User {
final String name;
final String avatar;
final String place;

  User({
    required this.name, 
    required this.avatar, 
    required this.place
  });

}