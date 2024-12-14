                                                                                             import 'package:flutter/material.dart';
import 'package:flutter_sesi4/controller/feed_controller.dart';
import 'package:flutter_sesi4/controller/photo_controller.dart';
import 'package:flutter_sesi4/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers : [
        ChangeNotifierProvider(create: (context) => FeedController(),
        ),
        ChangeNotifierProvider(create: (context) => PhotoController(),
        ),
      ], 
      child: MaterialApp(
        title: 'My App',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

