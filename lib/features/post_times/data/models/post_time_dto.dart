import 'dart:convert';

import 'package:avenue_demo/features/post_times/domain/entities/post_time.dart';

class PostTimeDto extends PostTime {
  final double averageEngagement;
  final int commentsCount;
  final DateTime dateTime;
  final String imageUrl;
  final int likesCount;
  PostTimeDto({
    required this.averageEngagement,
    required this.commentsCount,
    required this.dateTime,
    required this.imageUrl,
    required this.likesCount,
  }) : super(
          averageEngagement: averageEngagement,
          commentsCount: commentsCount,
          dateTime: dateTime,
          likesCount: likesCount,
          imageUrl: imageUrl,
        );

  PostTimeDto copyWith({
    double? averageEngagement,
    int? commentsCount,
    DateTime? dateTime,
    String? imageUrl,
    int? likesCount,
  }) {
    return PostTimeDto(
      averageEngagement: averageEngagement ?? this.averageEngagement,
      commentsCount: commentsCount ?? this.commentsCount,
      dateTime: dateTime ?? this.dateTime,
      imageUrl: imageUrl ?? this.imageUrl,
      likesCount: likesCount ?? this.likesCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'averageEngagement': averageEngagement,
      'commentsCount': commentsCount,
      'dateTime': dateTime.millisecondsSinceEpoch,
      'imageUrl': imageUrl,
      'likesCount': likesCount,
    };
  }

  factory PostTimeDto.fromMap(Map<String, dynamic> map) {
    return PostTimeDto(
      averageEngagement: map['averageEngagement'],
      commentsCount: map['commentsCount'],
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      imageUrl: map['imageUrl'],
      likesCount: map['likesCount'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PostTimeDto.fromJson(String source) =>
      PostTimeDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostTimeDto(averageEngagement: $averageEngagement, commentsCount: $commentsCount, dateTime: $dateTime, imageUrl: $imageUrl, likesCount: $likesCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostTimeDto &&
        other.averageEngagement == averageEngagement &&
        other.commentsCount == commentsCount &&
        other.dateTime == dateTime &&
        other.imageUrl == imageUrl &&
        other.likesCount == likesCount;
  }

  @override
  int get hashCode {
    return averageEngagement.hashCode ^
        commentsCount.hashCode ^
        dateTime.hashCode ^
        imageUrl.hashCode ^
        likesCount.hashCode;
  }
}
