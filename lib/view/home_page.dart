import 'package:flutter/material.dart';
import 'package:flutter_sesi4/controller/feed_controller.dart';
import 'package:flutter_sesi4/view/feed_cart.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OurApp', 
        style: TextStyle(
          fontWeight: FontWeight.w500
          ),
          ),
          ),
    body: ListView.builder(
      itemCount: FeedController().feeds.length, // Jumlah total item
  itemBuilder: (context, index) {
    return FeedCard(feed: FeedController().feeds[index]); 
  }
    ),
    );
  }
}

