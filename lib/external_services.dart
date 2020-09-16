class ExternalSearchService {
  final String name;
  final String url;

  ExternalSearchService(this.name, this.url);
}

class ExternalSearchServiceHelper {
  static List<ExternalSearchService> get services {
    return [
      ExternalSearchService(
          "Youtube",
          "https://www.youtube.com/results?search_query="
      ),
      ExternalSearchService(
          "SoundCloud",
          "https://soundcloud.com/search/sounds?q="
      ),
      ExternalSearchService(
          "ニコニコ動画",
          "https://www.nicovideo.jp/search/"
      )
    ];
  }
}