import 'package:flutter/cupertino.dart';

import '../../data/model/answear.dart';
import 'answear_option.dart';
import 'build_answears_options.dart';

Column buildColoredAnswears(BuildContext context, List<Answear> answears,
    int goodAnswearIndex, List<bool> colored) {
  return Column(
    children: [
      AnswearOption(
        answearText: answears[0].answearText,
        isColored: colored[0],
        answearIndex: 0,
        goodAnswearIndex: goodAnswearIndex,
      ),
      AnswearOption(
        answearText: answears[1].answearText,
        isColored: colored[1],
        answearIndex: 1,
        goodAnswearIndex: goodAnswearIndex,
      ),
      AnswearOption(
        answearText: answears[2].answearText,
        isColored: colored[2],
        answearIndex: 2,
        goodAnswearIndex: goodAnswearIndex,
      ),
    ],
  );
}
