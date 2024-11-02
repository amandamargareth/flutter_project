import 'package:flutter/material.dart';
import 'package:flutter_sesi4/model/feed.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;
  
  const FeedCard({
    super.key,
    required this.feed
  });

  @override
  Widget build(BuildContext context) {
    const url = 'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg';
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                feed.user.avatar
              ),
            ),
            title: Text(feed.user.name),
            subtitle: Text(feed.user.place),
            trailing: Icon(Icons.share),
          ),
          Image.network(feed.content.image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
          ),
          Row(
            children: <Widget>[
    SizedBox(width:10),
    Icon(
      Icons.favorite,
      color: Colors.red,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    ),
    SizedBox(width:10),
    Icon(
      Icons.chat_bubble_outline_sharp,
      size: 24.0,
    ),
    SizedBox(width:10),
    Icon(
      Icons.share,
      size: 24.0,
    ),
      Spacer(flex: 1,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.bookmark_outline),
              )
  ],
          ),
ListTile(
  title: Text(feed.content.likes),
  subtitle: Text(feed.content.descriptions),
)

      ]),
    );
  }
}