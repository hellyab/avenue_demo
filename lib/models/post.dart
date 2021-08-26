import 'dart:convert';

class Post {
  final DateTime dateTime;
  final int likesCount;
  final int commentsCount;
  final double averageEngagement;
  Post({
    required this.dateTime,
    required this.likesCount,
    required this.commentsCount,
    required this.averageEngagement,
  });

  Post copyWith({
    DateTime? dateTime,
    int? likesCount,
    int? commentsCount,
    double? averageEngagement,
  }) {
    return Post(
      dateTime: dateTime ?? this.dateTime,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      averageEngagement: averageEngagement ?? this.averageEngagement,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dateTime': dateTime.millisecondsSinceEpoch,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'averageEngagement': averageEngagement,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      dateTime: DateTime.fromMillisecondsSinceEpoch(map['dateTime']),
      likesCount: map['likesCount'],
      commentsCount: map['commentsCount'],
      averageEngagement: map['averageEngagement'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(dateTime: $dateTime, likesCount: $likesCount, commentsCount: $commentsCount, averageEngagement: $averageEngagement)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.dateTime == dateTime &&
        other.likesCount == likesCount &&
        other.commentsCount == commentsCount &&
        other.averageEngagement == averageEngagement;
  }

  @override
  int get hashCode {
    return dateTime.hashCode ^
        likesCount.hashCode ^
        commentsCount.hashCode ^
        averageEngagement.hashCode;
  }
}
