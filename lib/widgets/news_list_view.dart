
import 'package:flutter/material.dart';
import 'package:new_app/model/NewsModel.dart';
import 'package:new_app/widgets/post_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key, required this.newsList,
  });
 final List<NewsModel> newsList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context, index) => PostTile(newsModel: newsList[index],),
    );
  }
}
