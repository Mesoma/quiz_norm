// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizHeader extends StatelessWidget {
  const QuizHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          //Container with background image
          Container(
            height: 200,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
            decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage('assets/quiz_bg.png'),
                   fit: BoxFit.cover
               )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Column Of Text
                Column(
                  children: [
                    Text(
                        " Let's Play",
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        )
                    ),

                    const SizedBox(height: 5),

                    Text(
                        "And be the first",
                        style: TextStyle(color: Colors.white),
                    )
                  ],
                ),

                //Avatar
                CircleAvatar(
                  radius: 25,
                  backgroundColor:
                      Theme.of(context).colorScheme.secondaryContainer,
                  child: Text(
                    "LS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSecondaryContainer
                    ),
                  ),
                )
              ],
            ),
          ),

          //Join Quiz Card
          Positioned(
               bottom: -10,
               left: 0,
               right: 0,
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: SizedBox(
                    height: 140,
                    child: Card(
                        elevation: 5,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Enter your quiz code",
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.bold
                                ),
                            ),
                            const SizedBox (height: 5),
                            const Text("To play with your friends"),
                            const SizedBox (height: 15),
                            Row(
                              children: [
                                //text field
                                Expanded(child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Code",
                                    contentPadding: EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(5))
                                    )
                                  ),
                                 )
                                ),

                                const SizedBox (width: 10),

                                //button
                                ElevatedButton(
                                    onPressed: (){},
                                    child: const Text("Join"),
                                )
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                             ),
               )
          )
        ],
      ),
    );
  }
}
