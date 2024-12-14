import 'package:flutter/material.dart';
import 'package:flutter_sesi4/controller/feed_controller.dart';
import 'package:flutter_sesi4/controller/photo_controller.dart';
import 'package:flutter_sesi4/view/feed_bookmark.dart';
import 'package:flutter_sesi4/view/feed_cart.dart';
import 'package:flutter_sesi4/view/photo_card.dart';
import 'package:flutter_sesi4/view/profile_page.dart'; // Import ProfilePage
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Dipindahkan ke luar build agar state persist

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PhotoController>();

    // Perubahan pada _widgetOptions
    List<Widget> widgetOptions = <Widget>[
      // Tab Home
      ListView.builder(
        itemBuilder: (context, index) {
          return PhotoCard(photos: controller.photos[index]);
        },
      ),
      // Tab Bookmark
      // ListView.builder(
      //   itemCount: controller.2ookmarkedFeeds.length, // Validasi jumlah item
      //   itemBuilder: (context, index) {
      //     return FeedCard(feed: controller.bookmarkedFeeds[index]);
      //   },
      // ),
      // Tab Profile
      const ProfilePage(), // Ganti dengan laman ProfilePage
    ];

    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index; // Update tab yang dipilih
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OurApp',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BookmarkPage(),
                ),
              );
            },
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      body: widgetOptions.elementAt(_selectedIndex), // Render sesuai tab
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '', // Tanpa label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: '', // Tanpa label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '', // Tanpa label
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: onItemTapped, // Pindah tab
      ),
    );
  }
}
