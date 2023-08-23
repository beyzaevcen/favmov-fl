import 'dart:convert';

class MovieModel {
  final String title;
  final String description;
  final String imageUrl;
  final int score;
  MovieModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.score,
  });

  MovieModel copyWith({
    String? title,
    String? description,
    String? imageUrl,
    int? score,
  }) {
    return MovieModel(
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'score': score});

    return result;
  }

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      score: map['score']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieModel.fromJson(String source) => MovieModel.fromMap(json.decode(source));
}
