import 'package:quiz_app_bloc/data/model/answear.dart';
import 'package:quiz_app_bloc/data/model/question.dart';

List<Question> QuestionDB = [
  Question(
    questionNumber: 1,
    questionText: "Ile nóg ma człowiek?",
    answears: <Answear>[
      Answear(
        answearText: "2",
      ),
      Answear(
        answearText: "3",
      ),
      Answear(
        answearText: "1",
      ),
    ],
    goodAnswearIndex: 0,
  ),
  Question(
    questionNumber: 2,
    questionText: "Ile nóg ma pies?",
    answears: <Answear>[
      Answear(
        answearText: "2",
      ),
      Answear(
        answearText: "4",
      ),
      Answear(
        answearText: "1",
      ),
    ],
    goodAnswearIndex: 1,
  ),
  Question(
    questionNumber: 3,
    questionText: "Jaki kalkulator jest dozwolony na maturze?",
    answears: <Answear>[
      Answear(
        answearText: "Graficzny",
      ),
      Answear(
        answearText: "Nakukowy",
      ),
      Answear(
        answearText: "Prosty",
      ),
    ],
    goodAnswearIndex: 2,
  ),
  Question(
    questionNumber: 4,
    questionText: "Ile wynosi uczciwa cena?",
    answears: <Answear>[
      Answear(
        answearText: "5zł",
      ),
      Answear(
        answearText: "100zł",
      ),
      Answear(
        answearText: "Za darmo",
      ),
    ],
    goodAnswearIndex: 2,
  ),
];
