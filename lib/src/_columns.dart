import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/columns/basics/

Element columns({Mods mods, content, bool multiLine, bool centered}) =>
    apply(
        new Element('div', content: content)
          ..addClass('columns')
          ..addClass(multiLineClass(multiLine))
          ..addClass(centeredClass(centered)),
        mods);

Element column({Mods mods, content}) =>
    apply(new Element('div', classes: ['column'], content: content), mods);

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
// TODO: add Nesting
// TODO: add Gap
