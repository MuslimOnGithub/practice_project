// ignore: avoid_web_libraries_in_flutter
import 'dart:js' show context;

import 'package:flutter/material.dart';
import 'package:prototype_1_gym_app/exercise_details.dart';
import 'data/all_gym_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.day});

  final String day;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void goToExerciseDetails(String exercise) {
  Navigator.push(
    context as BuildContext, 
    MaterialPageRoute<void>(builder: (context)=> ExerciseDetails(
      exercise: exercise
    )
    
    )
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("10 Sebtember, 2024")),

        //     appBar: AppBar(title: Text(day)),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 8),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: ListTile(
                      title: Text(
                        GymData().getGymData()[0].exercises[index].name,
                        style: const TextStyle(fontSize: 25),
                      ),
                      trailing: const Icon(
                        Icons.edit,
                        size: 30,
                      ),
                      onTap: () => goToExerciseDetails(GymData().getGymData()[index].date),
                      minVerticalPadding: 18,
                      tileColor: Colors.white12,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10)))
                    ),
                  )),
        ));
  }
}
