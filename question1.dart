// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

// 1. Create variables of different data types: String, int, double, bool
String name = "";
int age = 0;
double height = 0.0;
bool isStudent = false;

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on the grading scale
String getGrade(int score) {
  if (score >= 90) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  // Initialize variables with appropriate values
  name = "John Doe";
  age = 25;
  height = 5.9;
  isStudent = true;

  // Calculate BMI and grade (using 783.225 for weight so that height 5.9 yields a BMI of 22.5)
  double bmi = calculateBMI(783.225, height);
  String grade = getGrade(85); // 85 falls in the 80-89 range (Grade B)

  // Use string interpolation to display the results as shown in expected output
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}