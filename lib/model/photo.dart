class Photos {
  String? id;
  String? altDescription;
  Urls? urls;
  int? likes;
  bool? likedByUser;
  User? user;

  Photos(
      {required this.id,
      required this.altDescription,
      required this.urls,
      required this.likes,
      required this.likedByUser,
      required this.user});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    altDescription = json['alt_description'];
    likes = json['likes'];
    likedByUser = json['liked_by_user'];
    urls = json['urls'] != null ? Urls.fromJson(json['urls']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  //factory pattern
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['alt_description'] = altDescription;
    data['likes'] = likes;
    data['liked_by_user'] = likedByUser;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (urls != null) {
      data['urls'] = urls!.toJson();
    }
    return data;
  }
}

class Urls {
  String? regular;

  Urls({required this.regular});

  Urls.fromJson(Map<String, dynamic> json) {
    regular = json['regular'];
  }

  //factory pattern
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['regular'] = regular;
    return data;
  }
}

class User {
  String? id;
  String? userName;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  Profile? profileImage;

  User(
      {required this.id,
      required this.userName,
      required this.firstName,
      required this.lastName,
      required this.twitterUsername,
      required this.profileImage});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['username'];
    name = json['name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    twitterUsername = json['twitter_username'];
    profileImage = json['profile_image'] != null
        ? Profile.fromJson(json['profile_image'])
        : null;
  }

  //factory pattern
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = userName;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['twitter_username'] = twitterUsername;
    if (profileImage != null) {
      data['profile_image'] = profileImage!.toJson();
    }
    return data;
  }
}

class Profile {
  String? small;

  Profile({required this.small});

  Profile.fromJson(Map<String, dynamic> json) {
    small = json['small'];
  }

  //factory pattern
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['small'] = small;
    return data;
  }
}
