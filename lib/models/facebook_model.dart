class FaceBookModel {
  late String name;
  late String email;
  late String id;
  late FaceBookPhotoModel faceBookPhotoModel;

  FaceBookModel(
      {required this.name,
      required this.email,
      required this.id,
      required this.faceBookPhotoModel});

  factory FaceBookModel.fromJson(Map<String, dynamic> json) => FaceBookModel(
        email: json['email'],
        name: json['name'],
        id: json['id'],
        faceBookPhotoModel:
            FaceBookPhotoModel.fromJson(json['picture']['data']),
      );
}

class FaceBookPhotoModel {
  final String? url;
  final int? height;
  final int? width;

  FaceBookPhotoModel({this.url, this.height, this.width});

  factory FaceBookPhotoModel.fromJson(Map<String, dynamic> json) =>
      FaceBookPhotoModel(
        url: json['url'],
        width: json['width'],
        height: json['height'],
      );
}
