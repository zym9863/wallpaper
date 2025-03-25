class WallpaperModel {
  final int id;
  final String pageURL;
  final String type;
  final String tags;
  final String previewURL;
  final String largeImageURL;
  final int imageWidth;
  final int imageHeight;
  final int views;
  final int downloads;
  final int likes;
  final int comments;
  final int user_id;
  final String user;
  final String userImageURL;

  WallpaperModel({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.largeImageURL,
    required this.imageWidth,
    required this.imageHeight,
    required this.views,
    required this.downloads,
    required this.likes,
    required this.comments,
    required this.user_id,
    required this.user,
    required this.userImageURL,
  });

  factory WallpaperModel.fromJson(Map<String, dynamic> json) {
    return WallpaperModel(
      id: json['id'],
      pageURL: json['pageURL'],
      type: json['type'],
      tags: json['tags'],
      previewURL: json['previewURL'],
      largeImageURL: json['largeImageURL'],
      imageWidth: json['imageWidth'],
      imageHeight: json['imageHeight'],
      views: json['views'],
      downloads: json['downloads'],
      likes: json['likes'],
      comments: json['comments'],
      user_id: json['user_id'],
      user: json['user'],
      userImageURL: json['userImageURL'],
    );
  }
}