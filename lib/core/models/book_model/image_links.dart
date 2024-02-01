import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String thumbnail;

  const ImageLinks({this.smallThumbnail, required this.thumbnail});

  factory ImageLinks.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      // Handle the case when 'imageLinks' is null.
      return const ImageLinks(
          smallThumbnail: null, thumbnail: ''); // or provide default values
    } else {
      return ImageLinks(
        smallThumbnail: json['smallThumbnail'] as String?,
        thumbnail: json['thumbnail'] as String,
      );
    }
  }

  Map<String, dynamic> toJson() => {
        'smallThumbnail': smallThumbnail,
        'thumbnail': thumbnail,
      };

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}

// Example usage:
// imageLinks: ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
