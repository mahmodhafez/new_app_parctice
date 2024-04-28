import 'package:flutter/material.dart';
import 'package:new_app/service/news_service.dart';
import 'package:new_app/widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: FutureBuilder(
        future: NewsService().getNews(),
        builder: (context, snapshot) {
          return NewsListView(
            newsList: snapshot.data?? [],
          );
        },
      ),
    );
  }
}
