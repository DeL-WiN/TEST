import 'package:flutter/material.dart';
import 'package:flutter_app/(AudioBooks/AudioBooks.dart';

void main() {
  runApp(MyApp());
}
var url =
Uri.parse('https://itunes.apple.com/us/rss/topaudiobooks/limit=25/json');
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    home: AudioBooks(),

    




);
    } }