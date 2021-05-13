class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isActive;
  final bool isVideoCall;
  final String time;

  User({
    this.id = 0,
    this.name = '',
    this.imageUrl = '',
    this.isActive = false,
    this.isVideoCall = false,
    this.time = '',
  });
}
