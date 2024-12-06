import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Untuk mengakses controller
import 'package:flutter_sesi4/controller/feed_controller.dart'; // Import controller Anda

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final feedController =
        context.watch<FeedController>(); // Mengakses controller

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 32),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/27545223/pexels-photo-27545223/free-photo-of-model-in-sweater-lying-on-grass.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), // Replace with profile image URL
              ),
              FloatingActionButton(
                mini: true,
                backgroundColor: Colors.green,
                onPressed: () {
                  // Edit profile action
                },
                child: const Icon(Icons.edit, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'John Doe',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          const Text(
            'UI/UX Designer',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 32),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text('My Membership'),
            onTap: () {
              // Navigate to membership page
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_outline),
            title: const Text('My Collection'),
            trailing: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${feedController.feeds.length}', // Gunakan panjang feeds
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              // Navigate to collection page
            },
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              // Logout action
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
