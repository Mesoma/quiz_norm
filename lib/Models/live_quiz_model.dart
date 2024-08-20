import 'package:flutter/cupertino.dart';

class LiveQuizModel {
  final String name;
  final IconData icon;
  final int activePlayers;

  LiveQuizModel({
    required this.name,
    required this.icon,
    required this.activePlayers,
  });
}

List<LiveQuizModel> liveQuizzes = [
  LiveQuizModel(
    name: "English for work",
    icon: CupertinoIcons.book,
    activePlayers: 1295,
  ),
  LiveQuizModel(
    name: "Vehicles",
    icon: CupertinoIcons.car,
    activePlayers: 2716,
  ),
  LiveQuizModel(
    name: "Entertainment",
    icon: CupertinoIcons.tv,
    activePlayers: 12038,
  ),
  LiveQuizModel(
    name: "Music",
    icon: CupertinoIcons.music_note,
    activePlayers: 871
  ),
  LiveQuizModel(
    name: "Mythology",
    icon: CupertinoIcons.leaf_arrow_circlepath,
    activePlayers: 432
  ),
];