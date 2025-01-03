import 'package:flutter/material.dart';
import 'package:flutter_sesi4/model/photo.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sesi4/controller/home_controller.dart';

class DetailPhotoPage extends StatelessWidget {
  final Photos photo;

  const DetailPhotoPage({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero animation for the photo
            Hero(
              tag: photo.id ?? '',
              child: Image.network(
                photo.urls?.regular ?? '',
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Photo description
                  Text(
                    photo.altDescription ?? 'No description available',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Photo likes
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: Colors.red),
                      const SizedBox(width: 4),
                      Text('${photo.likes ?? 0} likes'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // // Like/Unlike button
                  // ElevatedButton.icon(
                  //   onPressed: () {
                  //     context.read<HomeController>().like(photo);
                  //   },
                  //   icon: Icon(
                  //     photo.likedByUser ?? false
                  //         ? Icons.favorite
                  //         : Icons.favorite_border,
                  //   ),
                  //   label: Text(
                  //     photo.likedByUser ?? false ? 'Unlike' : 'Like',
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
