import 'package:quiz_app_bloc/data/model/answear.dart';
import 'package:quiz_app_bloc/data/model/question.dart';

List<Question> QuestionDB = [
  Question(
      questionNumber: 1,
      questionText: "Ile nóg ma człowiek?",
      answears: <Answear>[
        Answear(
          answearText: "2",
          isGood: true,
        ),
        Answear(
          answearText: "3",
          isGood: false,
        ),
        Answear(
          answearText: "1",
          isGood: false,
        ),
      ]),
  Question(
      questionNumber: 2,
      questionText: "Ile nóg ma pies?",
      answears: <Answear>[
        Answear(
          answearText: "2",
          isGood: false,
        ),
        Answear(
          answearText: "4",
          isGood: true,
        ),
        Answear(
          answearText: "1",
          isGood: false,
        ),
      ]),
  Question(
      questionNumber: 3,
      questionText: "Jaki kalkulator jest dozwolony na maturze?",
      answears: <Answear>[
        Answear(
          answearText: "Graficzny",
          isGood: false,
        ),
        Answear(
          answearText: "Nakukowy",
          isGood: false,
        ),
        Answear(
          answearText: "Prosty",
          isGood: true,
        ),
      ]),
  Question(
      questionNumber: 4,
      questionText: "Ile wynosi uczciwa cena?",
      answears: <Answear>[
        Answear(
          answearText: "5zł",
          isGood: false,
        ),
        Answear(
          answearText: "100zł",
          isGood: false,
        ),
        Answear(
          answearText: "Za darmo",
          isGood: true,
        ),
      ]),
];
