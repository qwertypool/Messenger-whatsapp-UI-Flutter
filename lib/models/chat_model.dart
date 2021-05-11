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
    time: '(3) Today 12:06 PM');

// USERS
final User dipa = User(
    id: 1,
    name: 'Dipa',
    imageUrl: 'assets/deepa.jpg',
    isActive: true,
    time: '(3) Today 12:06 PM');
final User dipak = User(
    id: 2,
    name: 'Dipak',
    imageUrl: 'assets/bro.jpg',
    isActive: true,
    time: '(3) Today 12:06 PM');
final User suvam = User(
    id: 3,
    name: 'Suvam',
    imageUrl: 'assets/bro2.jpg',
    isActive: false,
    time: '(3) May 7, 5:26 PM');
final User joty = User(
    id: 4,
    name: 'Joty',
    imageUrl: 'assets/me.jpg',
    isActive: false,
    time: ' Yesterday, 5:24 PM');
final User balram = User(
    id: 5,
    name: 'Balram',
    imageUrl: 'assets/bae.jpg',
    isActive: true,
    time: '(2) Yesterday, 8:16 PM');
final User sophia = User(
    id: 6,
    name: 'Sophia',
    imageUrl: 'assets/images/sophia.jpg',
    isActive: true,
    time: 'May 3 9:21 AM');
final User steven = User(
    id: 7,
    name: 'Steven',
    imageUrl: 'assets/images/steven.jpg',
    isActive: true,
    time: '(2) May 8 3:06 PM');
final User tuktuk = User(
    id: 8,
    name: 'Tuktuk ',
    imageUrl: 'assets/images/steven.jpg',
    isActive: true,
    time: 'May 8, 11:16 AM');
final User ayush = User(
    id: 9,
    name: 'Ayush ',
    imageUrl: 'assets/images/steven.jpg',
    isActive: true,
    time: 'May 6, 7:10 PM'
    );

// FAVORITE CONTACTS
List<User> favorites = [dipa, dipak, suvam, joty, balram];
List<User> calls = [dipak, joty, balram, tuktuk, steven, suvam, ayush, sophia];
List<User> active = [
  dipa,
  dipak,
  suvam,
  joty,
  balram,
  ayush,
  sophia,
  tuktuk,
  dipa,
  balram,
  dipak,
  suvam,
  ayush,
  tuktuk,
  ayush,
  dipak,
  tuktuk,
  joty,
  sophia,
  dipa,
  ayush,
  suvam,
];
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
List requestsData = [
  Chat(
    name: "Ravi Pandey",
    lastMessage: "Hii good morning dear ☺️",
    image: "assets/bro.jpg",
    time: "3m ago",
    isActive: true,
  ),
  Chat(
    name: "Anand Singh",
    lastMessage: "hlo girl😂😂😂",
    image: "assets/bae.jpg",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "Suraj Sah",
    lastMessage: "r u a cricket fan?then we can collab🤗🤗",
    image: "assets/bro2.jpg",
    time: "15m ago",
    isActive: false,
  ),
  Chat(
    name: "Mohan Mishra",
    lastMessage: "ok dont talk 😡😭",
    image: "assets/me.jpg",
    time: "3h ago",
    isActive: true,
  ),
  Chat(
    name: "Raesh Kumar",
    lastMessage: "hi plz reply u busy gal",
    image: "assets/bro2.jpg",
    time: "2d ago",
    isActive: false,
  ),
  Chat(
    name: "Balbhadra Singh",
    lastMessage: "again hiiii...r u thr",
    image: "assets/deepa.jpg",
    time: "3d ago",
    isActive: false,
  ),
  Chat(
    name: "Priya Sharma",
    lastMessage: "hlo wanna be frnds?🥰",
    image: "assets/bae.jpg",
    time: "4d ago",
    isActive: true,
  ),
  Chat(
    name: "Goutam Kamila",
    lastMessage: "hlo girl😂😂😂 ",
    image: "assets/bro.jpg",
    time: "5d ago",
    isActive: false,
  ),
];
