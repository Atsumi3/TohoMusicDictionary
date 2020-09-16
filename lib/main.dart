import 'package:flutter/material.dart';
import 'package:toho_music_dictionary/data/constants.dart';
import 'package:toho_music_dictionary/page/list/listpage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TohoMusicDict',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ListScreen(arguments: ListPageArguments(
        title: "種類選択",
        items: Constants.musicTypes,
        screen: Screen.TYPE_LIST,
        musicType: MusicType.NONE)
      )
    );
  }
}