import 'package:flutter/material.dart';
import 'package:new_app/service/news_service.dart';
import 'package:new_app/view/home_view.dart';

void main() {
  runApp(MyApp());
  NewsService().getNews();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
