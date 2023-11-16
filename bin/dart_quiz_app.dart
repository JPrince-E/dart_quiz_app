import 'dart:io';

import 'package:dart_quiz_app/dart_quiz_app.dart' as dart_quiz_app;

void main(List<String> arguments) {
  print(
      '\nWelcome to Smart Systems Research Laboratory: ${dart_quiz_app.calculate()}!\n');

  List<String> questions = [
    "What year did Nigeria gain her Independence?",
    "What element does plants breathe out?",
    "What is the largest sense organ in the human body?",
    "Who is the fist man to visit the moon?",
    "What is the full meaning of CPU?",
    "Who is the fastest man alive?",
    "What class of food is the most essential for life?",
    "What is the largest mountain in Africa?",
    "What year was Nigeria amalgamated",
    "Which body is responsible for the regulation of drugs?",
  ];

  List<String> answers = [
    "1960",
    "Oxygen",
    "SKin",
    "Neil Armstrong",
    "Central Processing Unit",
    "Usain Bolt",
    "Water",
    "Mount Kilimanjaro",
    "1914",
    "NDLEA",
  ];


  List<String> optionQuestions = [
    "What year did Nigeria gain her Independence? \n"
        "(a)1959 (b)1960 (c)1961 (d)1914",
    "What element does plants breathe out? \n"
        "(a)CO2 (b)Oxygen (c)Nitrogen (d)air",
    "What is the largest sense organ in the human body? \n"
        "(a)Eyes (b)Ear (c)SKin (d)Nose",
    "Who is the fist man to visit the moon? \n"
        "(a)Neil Armstrong (b)Robert Ford (c)Usain Bolt (d)Samuel",
    "What is the full meaning of CPU? \n"
        "(a)Central Processor Unit (b)Central Processing Union (c)Center Processing Unit (d)Central Processing Unit",
    "Who is the fastest man alive? \n"
        "(a)Neil Armstrong (b)Robert Ford (c)Usain Bolt (d)Samuel",
    "What class of food is the most essential for life? \n"
        "(a)Protein (b)Water (c)Carbohydrate (d)air",
    "What is the largest mountain in Africa? \n"
        "(a)CAC Mountain (b)Mount Everest (c)Mount Kilimanjaro (d)Mount Sina",
    "What year was Nigeria amalgamated\n"
        "(a)1959 (b)1960 (c)1961 (d)1914",
    "Which body is responsible for the regulation of drugs?\n"
        "(a)NAFDAC (b)WHO (c)NDLEA (d)FRSC",
  ];

  List<String> optionAnswers = [
    "b",
    "b",
    "c",
    "a",
    "d",
    "c",
    "b",
    "b",
    "d",
    "c",
  ];

  int score = 0;

  for (int a = 0; a < 2; a++) {
    print("\nWould you prefer Multiple Option Questions? Yes/No");
    String questionType = getUserInput("Your question type: ");

    if (questionType.toLowerCase() == "Yes".toLowerCase()) {
      a = 2;
      for (int i = 0; i < optionQuestions.length; i++) {
        print("Question ${i + 1}: ${optionQuestions[i]}");
        String userAnswer = getUserInput("Your answer: ");

        if('abcd'.contains(userAnswer.toLowerCase())) {
          if (userAnswer.toLowerCase() == optionAnswers[i].toLowerCase()) {
            print("Correct!\n");
            score++;
          } else {
            print("Incorrect. The correct answer is: ${optionAnswers[i]}\n");
          }
        }else {
          print("\nPlease pick options between a-d!\n");
          i--;
        }

      }

    } else if (questionType.toLowerCase() == "No".toLowerCase()) {
      a = 2;
      for (int i = 0; i < questions.length; i++) {
        print("Question ${i + 1}: ${questions[i]}");
        String userAnswer = getUserInput("Your answer: ");

        if (userAnswer.toLowerCase() == answers[i].toLowerCase()) {
          print("Correct!\n");
          score++;
        } else {
          print("Incorrect. The correct answer is: ${answers[i]}\n");
        }
      }
    } else {
      print("\nYour answer should be Yes or No. \nPlease pick again \n");
      a= 0;
    }
  }
  print("Quiz complete! Your score: $score out of ${questions.length}");
}

String getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync()!;
}
