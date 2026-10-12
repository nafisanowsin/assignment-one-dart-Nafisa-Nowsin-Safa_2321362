// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Create a Map<String, int> to store student scores
  Map<String, int> studentScores = {};

  // 3. Use a for loop to assign random scores (60-100) to each student
  final random = Random();
  for (String student in studentNames) {
    // nextInt(41) generates 0 to 40; adding 60 gives a range of 60 to 100
    studentScores[student] = random.nextInt(41) + 60;
  }

  // 4. Find and display highest, lowest, and average scores
  String highestStudent = studentNames[0];
  int highestScore = studentScores[highestStudent]!;
  String lowestStudent = studentNames[0];
  int lowestScore = studentScores[lowestStudent]!;
  int totalScore = 0;

  for (String student in studentNames) {
    int score = studentScores[student]!;
    totalScore += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }

  double averageScore = totalScore / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  // 5. Use a switch statement to categorize students
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score) {
      case >= 90:
        category = "Excellent";
        break;
      case >= 80:
        category = "Good";
        break;
      case >= 70:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
        break;
    }

    print("$student: $score ($category)");
  }
}
