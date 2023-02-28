import 'package:flutter/cupertino.dart';

import '../../data/model/answear.dart';
import 'answear_option.dart';
import 'build_answears_options.dart';

Column buildInitAnswears(
    BuildContext context, List<Answear> answears, int goodAnswearIndex) {
  return Column(
    children: [
      AnswearOption(
        answearText: answears[0].answearText,
        isColored: false,
        answearIndex: 0,
        goodAnswearIndex: goodAnswearIndex,
        isEnabled: true,
      ),
      AnswearOption(
        answearText: answears[1].answearText,
        isColored: false,
        answearIndex: 1,
        goodAnswearIndex: goodAnswearIndex,
        isEnabled: true,
      ),
      AnswearOption(
        answearText: answears[2].answearText,
        isColored: false,
        answearIndex: 2,
        goodAnswearIndex: goodAnswearIndex,
        isEnabled: true,
      ),
    ],
  );
}
