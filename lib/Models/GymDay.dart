import 'package:prototype_1_gym_app/Models/Exercise.dart';

class GymDay {

final int time;
final String date;
final List<Exercise> exercises;

GymDay({required this.time, required this.date,
  required this.exercises
});
}