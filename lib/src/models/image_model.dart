/// Create an image model
class ImageModel {
  /// url of an image
  String url;

  /// id of an image
  int id;

  /// title of an image
  String title;

  /// Default constructor accepts three named parameters
  ImageModel({this.url, this.id, this.title});

  /// Named constructor to build image model from [parsedJson]
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
