import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.title, this.duration});

 final String title;
 var duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
             padding: const EdgeInsets.only(top: 70.0, left: 40),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text(title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                 Text(" $duration", style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),
               ],
             ),
           );
  }
}

void buttonFunction() {

}


class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
        onPressed: buttonFunction,
        shape: CircleBorder(),
        child: Icon(Icons.add),
        );
  }
}


class ExcersiseTile extends StatelessWidget {
  const ExcersiseTile({super.key, required this.title, required this.value});

  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white24
                ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                children: [
                  Text(title, style: const TextStyle(fontSize:20),),
                  const Spacer(),
                  const Icon(Icons.add)
                ],
                            ),
              ),
            ),
          ),
        ],
    );
  }
}