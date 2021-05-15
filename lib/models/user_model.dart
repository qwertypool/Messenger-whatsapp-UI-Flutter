class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isActive;
  bool isFavorite;
  final bool isVideoCall;
  final String time;
  final String storyImage;

  User({
    this.id = 0,
    this.name = '',
    this.imageUrl = '',
    this.isActive = false,
    this.isFavorite = false,
    this.isVideoCall = false,
    this.time = '',
    this.storyImage='',
  });
}
