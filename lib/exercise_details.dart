import 'package:flutter/material.dart';

class ExerciseDetails extends StatelessWidget {
  const ExerciseDetails({super.key, required this.exercise});

  final String exercise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exercise),),
    );
  }
}