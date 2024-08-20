// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz_norm/Models/question_model.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key, required this.title}): super(key: key);
  final String title;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  int currentQuestion = 0;

  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Ionicons.help_outline),
              splashRadius: 24,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${currentQuestion + 1}/${sampleQuestions.length}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: sampleQuestions.length,
                onPageChanged: (value){
                  setState(() {
                    currentQuestion = value;
                  });
                },
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                    final question = sampleQuestions[index];
                    return ListView(
                      children: [
                        Text(
                            sampleQuestions[index].question,
                            style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(height: 25),
                        ... List.generate(
                            4,
                            (optionIndex){
                              final option = question.options[optionIndex];
                              return Padding(
                                padding: const EdgeInsets.only(bottom:20),
                                child: RadioListTile(
                                    shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)
                                    ),
                                    contentPadding: EdgeInsets.all(8),
                                    title: Text(option),
                                    value: option,
                                    groupValue: question.userAnswered,
                                    selected: question.userAnswered == option,
                                    selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
                                    activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
                                    tileColor: Theme.of(context).colorScheme.surface,
                                    onChanged: (value){
                                      setState(() {
                                        question.userAnswered = value!;
                                      });
                                    }
                                ),
                              );
                            }
                        )
                      ],
                    );
                },
              ),
            ),
            SizedBox(height: 20),
            SizedBox( width: double.infinity,
                      height: 55,
              child: ElevatedButton(
                  onPressed: (){
                    if(currentQuestion < sampleQuestions.length - 1){
                      setState(() {
                        currentQuestion++;
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn
                        );
                      });
                    }
                  },
                  child: Text(
                    currentQuestion < sampleQuestions.length - 1
                        ? "Next"
                        : "Submit"
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
