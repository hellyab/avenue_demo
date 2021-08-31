class PostTime {
  final double averageEngagement;
  final int commentsCount;
  final DateTime postedAt;
  final String imageUrl;
  final int likesCount;
  PostTime({
    required this.averageEngagement,
    required this.commentsCount,
    required this.postedAt,
    required this.imageUrl,
    required this.likesCount,
  });

  String get averageEngagementPercent {
    return "${this.averageEngagement.toStringAsFixed(3)}%";
  }
}
