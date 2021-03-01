import 'dart:convert' as json;

import 'package:built_value/built_value.dart';

part 'json_parsing.g.dart';

List<int> parseTopStories(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  final result = List<int>.from(parsed);
  return result;
}

Article parseArticle(String jsonStr) {
  return null;
  // final parsed = json.jsonDecode(jsonStr);
  // final article = Article.fromJson(parsed);
  // return article;
}

abstract class Article implements Built<Article, ArticleBuilder> {

  Article._();

  factory Article([void Function(ArticleBuilder) updates]) = _$Article;
}

// class Article {
//   final String title;
//   final String url;
//   final String by;
//   final int score;
//   final int id;
//
//   Article({this.title, this.url, this.by, this.score, this.id});
//
//   factory Article.fromJson(Map<String, dynamic> json) {
//     if (json == null) return null;
//     return Article(
//       title: json["title"] ?? "[null]",
//       url: json["url"],
//       by: json["by"],
//       score: json["score"],
//       id: json["id"],
//     );
//   }
// }
