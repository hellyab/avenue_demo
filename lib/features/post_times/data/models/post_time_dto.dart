import 'dart:convert';

import 'package:avenue_demo/features/post_times/domain/entities/post_time.dart';

class PostTimeDto extends PostTime {
  final double engagement;
  final int comments;
  final DateTime postedTime;
  final String photoUrl;
  final int likes;
  PostTimeDto({
    required this.engagement,
    required this.comments,
    required this.postedTime,
    required this.photoUrl,
    required this.likes,
  }) : super(
            averageEngagement: engagement,
            commentsCount: comments,
            dateTime: postedTime,
            likesCount: likes,
            imageUrl: photoUrl);

  PostTimeDto copyWith({
    double? engagement,
    int? comments,
    DateTime? postedTime,
    String? photoUrl,
    int? likes,
  }) {
    return PostTimeDto(
      engagement: engagement ?? this.engagement,
      comments: comments ?? this.comments,
      postedTime: postedTime ?? this.postedTime,
      photoUrl: photoUrl ?? this.photoUrl,
      likes: likes ?? this.likes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'engagement': engagement,
      'comments': comments,
      'postedTime': postedTime.toString(),
      'photoUrl': photoUrl,
      'likes': likes,
    };
  }

  factory PostTimeDto.fromMap(Map<String, dynamic> map) {
    return PostTimeDto(
      engagement: map['engagement'],
      comments: map['comments'],
      postedTime: DateTime.parse(map['postedTime']),
      photoUrl: map['photoUrl'],
      likes: map['likes'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PostTimeDto.fromJson(String source) =>
      PostTimeDto.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostTimeDto(engagement: $engagement, comments: $comments, postedTime: $postedTime, photoUrl: $photoUrl, likes: $likes)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostTimeDto &&
        other.engagement == engagement &&
        other.comments == comments &&
        other.postedTime == postedTime &&
        other.photoUrl == photoUrl &&
        other.likes == likes;
  }

  @override
  int get hashCode {
    return engagement.hashCode ^
        comments.hashCode ^
        postedTime.hashCode ^
        photoUrl.hashCode ^
        likes.hashCode;
  }
}
