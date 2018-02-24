import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/columns/basics/

// TODO: add variable gap (is-1 .. is-9)

Element columns(
  content, {
  bool noGap,
  bool multiLine,
  bool centered,
}) =>
    div([
      clazz('columns'),
      noGap == true ? Modifier.noGap : null,
      multiLine == true ? Modifier.multiLine : null,
      centered == true ? Modifier.centered : null,
      content,
    ]);

Element column(content) => div([clazz('column'), content]);

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
