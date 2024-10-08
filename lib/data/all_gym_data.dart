import 'package:prototype_1_gym_app/Models/Exercise.dart';
import 'package:prototype_1_gym_app/Models/Set.dart';
import '../Models/GymDay.dart';

class GymData {

/*
A list of DATES
each element of those dates includes a list of exercises
*/

List<GymDay> gymDays = [
GymDay(time: 120, date: "10 Sep, 2024", exercises: [

  Exercise(name: "Lat pulldown", sets: [
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4)
  ]),
  Exercise(name: "Pullups", sets: [
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4)
  ]),
  Exercise(name: "Bench press", sets: [
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4)
  ])

]),
GymDay(time: 70, date: "11 Sep, 2024", exercises: [

  Exercise(name: "Lat pulldown", sets: [
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4)
  ]),
  Exercise(name: "Bench press", sets: [
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4),
    Set(reps: 4, weight: 4, intencity: 4)
  ])

])
];

//Get the list of workouts.
List<GymDay> getGymData(){
  return gymDays;
}

// String getNumberOfSets(Exercise) {
//   return getGymData()[0].exercises[index].sets.length.toString()
// }

}