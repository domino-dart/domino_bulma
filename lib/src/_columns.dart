import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/columns/basics/

Element columns({Mods mods, content, bool isMultiline, bool isCentered}) =>
    apply(
        new Element('div', content: content)
          ..addClass('columns')
          ..addClass(multilineClass(isMultiline))
          ..addClass(centeredClass(isCentered)),
        mods);

Element column({Mods mods, content}) =>
    apply(new Element('div', classes: ['column'], content: content), mods);

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
// TODO: add Nesting
// TODO: add Gap
