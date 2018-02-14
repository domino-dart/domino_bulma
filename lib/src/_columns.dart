import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/columns/basics/

// TODO: add variable gap (is-1 .. is-9)

Element columns({
  Mods mods,
  List content,
  bool noGap,
  bool multiLine,
  bool centered,
}) =>
    apply(
        new Element('div', content: content)
          ..addClass('columns')
          ..addClass(noGapClass(noGap))
          ..addClass(multiLineClass(multiLine))
          ..addClass(centeredClass(centered)),
        mods);

Element column({Mods mods, content}) =>
    apply(new Element('div', classes: ['column'], content: content), mods);

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
