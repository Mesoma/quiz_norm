// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_norm/Models/recent_quiz_model.dart';
import 'package:quiz_norm/wigets/live_quiz.dart';
import 'package:quiz_norm/wigets/quiz_header.dart';
import 'package:quiz_norm/wigets/recent_quiz.dart';

import '../Models/live_quiz_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          //Quiz Card
          QuizHeader(),

          //List View of Quizzes
          Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 15),
                physics: BouncingScrollPhysics(),
                children: [

                  //Recent Quiz Text and Tile
                  Text(
                      "Recent Quiz",
                      style: Theme.of(context).textTheme.headlineMedium
                  ),
                  const SizedBox(height: 15),
                  
                  //Recent Quiz Tiles defined in a different page
                  ...List.generate(recentQuizzes.length, (index){
                    return RecentQuiz(
                       recentQuizModel: recentQuizzes[index],
                    );
                   },
                  ),

                  SizedBox(height: 15),

                  //Live Quiz Text and Tile
                  Text(
                      "Live Quiz",
                      style: Theme.of(context).textTheme.headlineMedium
                  ),
                  const SizedBox(height: 15),

                  //Live Quiz Tiles defined in a different page
                  ...List.generate(liveQuizzes.length, (index){
                    return LiveQuiz(
                      liveQuizModel: liveQuizzes[index],
                    );
                  },
                  )
                ],
              )
          )
        ],
       ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline), label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Ionicons.ribbon_outline), label: "Awards"
        ),
        BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbox_ellipses_outline), label: "Chat"
        ),
        BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline), label: "Profile"
        ),
      ],

      ),
    );
  }
}
