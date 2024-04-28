import 'package:flutter/material.dart';
import 'package:new_app/model/NewsModel.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(newsModel.image ??
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e5c0eb54-256d-4330-bdfe-289f35dc0015/desw0yu-b038387b-5499-48b8-be8b-0058f163afda.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U1YzBlYjU0LTI1NmQtNDMzMC1iZGZlLTI4OWYzNWRjMDAxNVwvZGVzdzB5dS1iMDM4Mzg3Yi01NDk5LTQ4YjgtYmU4Yi0wMDU4ZjE2M2FmZGEuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.-P96IFI15S2fO4uFOjE6vlwgLVJKvq3yVRrncezsU4E'),
          Text(newsModel.title ?? 'Null'),
          Text(newsModel.desc ?? 'decr'),
        ],
      ),
    );
  }
}
