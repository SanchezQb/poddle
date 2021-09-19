class Episode {
  String? id;
  String? rss;
  String? link;
  String? audio;
  String? image;
  Podcast? podcast;
  int? itunesId;
  String? thumbnail;
  int? pubDateMs;
  String? titleOriginal;
  String? listennotesUrl;
  int? audioLengthSec;
  bool? explicitContent;
  String? titleHighlighted;
  String? descriptionOriginal;
  String? descriptionHighlighted;
  List<String>? transcriptsHighlighted;

  Episode(
      {this.id,
      this.rss,
      this.link,
      this.audio,
      this.image,
      this.podcast,
      this.itunesId,
      this.thumbnail,
      this.pubDateMs,
      this.titleOriginal,
      this.listennotesUrl,
      this.audioLengthSec,
      this.explicitContent,
      this.titleHighlighted,
      this.descriptionOriginal,
      this.descriptionHighlighted,
      this.transcriptsHighlighted});

  Episode.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    rss = json['rss'] as String;
    link = json['link'] as String;
    audio = json['audio'] as String;
    image = json['image'] as String;
    podcast = json['podcast'] != null
        ? Podcast?.fromJson(json['podcast'] as Map<String, dynamic>)
        : null;
    itunesId = json['itunes_id'] as int;
    thumbnail = json['thumbnail'] as String;
    pubDateMs = json['pub_date_ms'] as int;
    titleOriginal = json['title_original'] as String;
    listennotesUrl = json['listennotes_url'] as String;
    audioLengthSec = json['audio_length_sec'] as int;
    explicitContent = json['explicit_content'] as bool;
    titleHighlighted = json['title_highlighted'] as String;
    descriptionOriginal = json['description_original'] as String;
    descriptionHighlighted = json['description_highlighted'] as String;
    transcriptsHighlighted = json['transcripts_highlighted'] as List<String>;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['rss'] = rss;
    data['link'] = link;
    data['audio'] = audio;
    data['image'] = image;
    if (podcast != null) {
      data['podcast'] = podcast?.toJson();
    }
    data['itunes_id'] = itunesId;
    data['thumbnail'] = thumbnail;
    data['pub_date_ms'] = pubDateMs;
    data['title_original'] = titleOriginal;
    data['listennotes_url'] = listennotesUrl;
    data['audio_length_sec'] = audioLengthSec;
    data['explicit_content'] = explicitContent;
    data['title_highlighted'] = titleHighlighted;
    data['description_original'] = descriptionOriginal;
    data['description_highlighted'] = descriptionHighlighted;
    data['transcripts_highlighted'] = transcriptsHighlighted;
    return data;
  }
}

class Podcast {
  String? id;
  String? image;
  List<int>? genreIds;
  String? thumbnail;
  String? listenScore;
  String? titleOriginal;
  String? listennotesUrl;
  String? titleHighlighted;
  String? publisherOriginal;
  String? publisherHighlighted;
  String? listenScoreGlobalRank;

  Podcast(
      {this.id,
      this.image,
      this.genreIds,
      this.thumbnail,
      this.listenScore,
      this.titleOriginal,
      this.listennotesUrl,
      this.titleHighlighted,
      this.publisherOriginal,
      this.publisherHighlighted,
      this.listenScoreGlobalRank});

  Podcast.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String;
    image = json['image'] as String;
    genreIds = json['genre_ids'] as List<int>;
    thumbnail = json['thumbnail'] as String;
    listenScore = json['listen_score'] as String;
    titleOriginal = json['title_original'] as String;
    listennotesUrl = json['listennotes_url'] as String;
    titleHighlighted = json['title_highlighted'] as String;
    publisherOriginal = json['publisher_original'] as String;
    publisherHighlighted = json['publisher_highlighted'] as String;
    listenScoreGlobalRank = json['listen_score_global_rank'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image'] = image;
    data['genre_ids'] = genreIds;
    data['thumbnail'] = thumbnail;
    data['listen_score'] = listenScore;
    data['title_original'] = titleOriginal;
    data['listennotes_url'] = listennotesUrl;
    data['title_highlighted'] = titleHighlighted;
    data['publisher_original'] = publisherOriginal;
    data['publisher_highlighted'] = publisherHighlighted;
    data['listen_score_global_rank'] = listenScoreGlobalRank;
    return data;
  }
}
