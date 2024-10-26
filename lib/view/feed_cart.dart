import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({
    super.key,
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
                url
              ),
            ),
            title: Text('amandamargaretha_s'),
            subtitle: Text('songs'),
            trailing: Icon(Icons.share),
          ),
          Image.network('https://images.pexels.com/photos/57416/cat-sweet-kitty-animals-57416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
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
  title: Text('12.342 likes'),
  subtitle: Text('test coba test'),
)

      ]),
    );
  }
}