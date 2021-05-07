import 'package:chat_page/models/user_model.dart';

class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
  isActive: true,
);

// USERS
final User dipa = User(
  id: 1,
  name: 'Dipa',
  imageUrl: 'assets/deepa.jpg',
  isActive: true,
);
final User dipak = User(
  id: 2,
  name: 'Dipak',
  imageUrl: 'assets/bro.jpg',
  isActive: true,
);
final User suvam = User(
  id: 3,
  name: 'Suvam',
  imageUrl: 'assets/bro2.jpg',
  isActive: false,
);
final User joty = User(
  id: 4,
  name: 'Joty',
  imageUrl: 'assets/me.jpg',
  isActive: false,
);
final User balram = User(
  id: 5,
  name: 'Balram',
  imageUrl: 'assets/bae.jpg',
  isActive: true,
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
  isActive: true,
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
  isActive: true,
);

// FAVORITE CONTACTS
List<User> favorites = [dipa, dipak, suvam, joty, balram];
List chatsData = [
  Chat(
    name: "Dipak Pandey",
    lastMessage: "go n cook the maggie hell...",
    image: "assets/bro.jpg",
    time: "3m ago",
    isActive: true,
  ),
  Chat(
    name: "Ayush Pandey",
    lastMessage: "hehe let's watch the guardians of the galaxy again...",
    image: "assets/bae.jpg",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Steen Locas",
    lastMessage: "Did you ask rita for the updates...",
    image: "assets/bro2.jpg",
    time: "15m ago",
    isActive: false,
  ),
  Chat(
    name: "Priyanka Basak",
    lastMessage: "Will you be attending the meet today?? :)",
    image: "assets/me.jpg",
    time: "3h ago",
    isActive: true,
  ),
  Chat(
    name: "Suvam Pandey",
    lastMessage: "thanks sis",
    image: "assets/bro2.jpg",
    time: "2d ago",
    isActive: false,
  ),
  Chat(
    name: "Jyoti Wilson",
    lastMessage: "Get well soon dear...",
    image: "assets/deepa.jpg",
    time: "3d ago",
    isActive: false,
  ),
  Chat(
    name: "Ayush Howard",
    lastMessage: "let's collab this sunday...",
    image: "assets/bae.jpg",
    time: "4d ago",
    isActive: true,
  ),
  Chat(
    name: "Neha Edwards",
    lastMessage: "Bye. take care!...",
    image: "assets/bro.jpg",
    time: "5d ago",
    isActive: false,
  ),
];
