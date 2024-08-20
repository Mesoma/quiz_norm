// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_norm/Models/live_quiz_model.dart';
import 'package:quiz_norm/Models/recent_quiz_model.dart';

class LiveQuiz extends StatelessWidget {
  const LiveQuiz({
    Key? key, required this.liveQuizModel
  }): super(key: key);
  final LiveQuizModel liveQuizModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black26,

      //Inside the Card
      child: ListTile(
        onTap: (){},
        contentPadding: EdgeInsets.all(15),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Icon(
            liveQuizModel.icon,
            color: Colors.white,
          ),
        ),

        //Recent Quiz Name
        title: Text(liveQuizModel.name),

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
            Text("${liveQuizModel.activePlayers} Active Players")
          ],
        ),
      ),
    );
  }
}

