// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_norm/Models/recent_quiz_model.dart';
import 'package:quiz_norm/pages/question_page.dart';

class RecentQuiz extends StatelessWidget {
  const RecentQuiz({
    Key? key, required this.recentQuizModel
  }): super(key: key);
  final RecentQuizModel recentQuizModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black26,

      //Inside the Card
      child: ListTile(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => QuestionPage(
                title: recentQuizModel.name,
              )
            )
          );
        },
        contentPadding: EdgeInsets.all(15),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.purple[300],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(
            recentQuizModel.icon,
            color: Colors.white,
          ),
        ),

        //Recent Quiz Name
        title: Text(recentQuizModel.name),

        //Recent Quiz Score
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            //Icon of score sheet
            Icon(
                Ionicons.document_text_outline,
                size: 18,
            ),
            SizedBox(width: 5),

            //ratio of answered questions
            Text("10/10 Questions")
          ],
        ),
      ),
    );
  }
}
