import 'package:flutter/material.dart';
import 'package:flutter_sesi4/model/feed.dart';

class FeedController {
  List<Feed> feeds = [
    Feed(
        user: User(
          name: 'Jhone Dave',
          avatar:
              'https://images.pexels.com/photos/27545223/pexels-photo-27545223/free-photo-of-model-in-sweater-lying-on-grass.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          place: 'Makassar, Indonesia',
        ),
        content: Content(
            image:
                'https://images.pexels.com/photos/17323471/pexels-photo-17323471/free-photo-of-portrait-of-bored-child.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            favorite: true,
            likes: '21.310 likes',
            descriptions: 'cute girl')),
    Feed(
        user: User(
          name: 'couplecouple',
          avatar:
              'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          place: 'Bandung, Indonesia',
        ),
        content: Content(
            image:
                'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            favorite: false,
            likes: '30.100 likes',
            descriptions: 'love love couple')),
    Feed(
        user: User(
          name: 'dogdaily',
          avatar:
              'https://images.pexels.com/photos/9102177/pexels-photo-9102177.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          place: 'Garut, Indonesia',
        ),
        content: Content(
            image:
                'https://images.pexels.com/photos/9102177/pexels-photo-9102177.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            favorite: true,
            likes: '19.837 likes',
            descriptions: 'day 123243523')),
  ];
}
