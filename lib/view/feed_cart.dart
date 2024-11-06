import 'package:flutter/material.dart';
import 'package:flutter_sesi4/model/feed.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;

  const FeedCard({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(feed.user.avatar),
          ),
          title: Text(feed.user.name),
          subtitle: Text(feed.user.place),
          trailing: Icon(Icons.more_vert_rounded),
        ),
        Image.network(
          feed.content.image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            SizedBox(width: 10),
            Icon(
              feed.content.favorite
                  ? Icons.favorite
                  : Icons.favorite_outline_rounded,
              color: feed.content.favorite
                  ? Colors.red
                  : null, // Tidak ada warna jika false
              size: 24.0,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.mode_comment_outlined,
              size: 24.0,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.send_outlined,
              size: 24.0,
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.bookmark_outline_rounded),
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
