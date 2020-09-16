import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toho_music_dictionary/data/constants.dart';
import 'package:toho_music_dictionary/external_services.dart';
import 'package:url_launcher/url_launcher.dart';

class ListPageArguments {
  ListPageArguments({this.title, this.items, this.screen, this.musicType});

  final String title;
  final List<String> items;
  final Screen screen;
  final MusicType musicType;
}

class ListScreen extends StatefulWidget {
  final ListPageArguments arguments;
  ListScreen({Key key, @required this.arguments}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

extension ListScreenRoute on ListScreen {
  static Route<dynamic> route({@required ListPageArguments arguments}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: "ListScreen-${arguments.musicType.value}"),
      builder: (_) => ListScreen(arguments: arguments),
    );
  }
}

class _ListScreenState extends State<ListScreen> {
  List<String> _findMusics(
      String title, Map<int, Map<String, List<String>>> values) {
    for (Map<String, List<String>> v in values.values) {
      if (v.containsKey(title)) {
        return v.values.first;
      }
    }
    return [];
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _presentNextListScreen(ListPageArguments arguments) {
    Navigator.of(context).push(ListScreenRoute.route(arguments: arguments));
  }

  _onTap(String rowItem) {
    switch (widget.arguments.screen) {
      case Screen.TYPE_LIST:
        final MusicType type = MusicTypeHelper.typeOf(rowItem);
        Map<int, Map<String, List<String>>> data;
        switch (type) {
          case MusicType.GAME:
            data = Constants.game;
            break;
          case MusicType.ZUN_MUSIC_COLLECTION:
            data = Constants.zunMusicCollection;
            break;
          case MusicType.COMIC:
            data = Constants.comic;
            break;
          case MusicType.NONE:
            return;
        }

        List<int> keys = data.keys.toList();
        keys.sort((a, b) => a.compareTo(b));
        final List<String> values = keys.map((e) => data[e].keys.first).toList();
        _presentNextListScreen(
            ListPageArguments(
                title: rowItem,
                musicType: type,
                screen: Screen.SERIES_LIST,
                items: values)
        );
        break;
      case Screen.SERIES_LIST:
        var data;
        switch (widget.arguments.musicType) {
          case MusicType.GAME:
            data = Constants.game;
            break;
          case MusicType.ZUN_MUSIC_COLLECTION:
            data = Constants.zunMusicCollection;
            break;
          case MusicType.COMIC:
            data = Constants.comic;
            break;
          case MusicType.NONE:
            return;
        }
        _presentNextListScreen(
            ListPageArguments(
                title: rowItem,
                musicType: widget.arguments.musicType,
                screen: Screen.MUSIC_LIST,
                items: _findMusics(rowItem, data))
        );
        break;
      case Screen.MUSIC_LIST:
        List<Widget> menus = List();

        // open external service
        ExternalSearchServiceHelper.services.forEach((e) => menus.add(ListTile(
              title: Text("コピーして${e.name}を開く"),
              onTap: () => _launchURL("${e.url}${Uri.encodeComponent(rowItem)}"),
            )));

        // copy to clipboard
        menus.add(ListTile(
          title: Text("クリップボードへコピー"),
          onTap: () => {
            Clipboard.setData(ClipboardData(text: rowItem))
          },
        ));

        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: menus,
            );
          },
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments.title),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              child: Padding(
                child: Text(widget.arguments.items[index]),
                padding: EdgeInsets.all(20.0),
              ),
            ),
            onTap: () => {
              _onTap(widget.arguments.items[index])
            },
          );
        },
        itemCount: widget.arguments.items.length,
      ),
    );
  }
}
