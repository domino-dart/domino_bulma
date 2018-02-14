import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/columns/basics/

Element columns({Mods mods, content}) =>
    apply(new Element('div', classes: ['columns'], content: content), mods);

Element column({Mods mods, content}) =>
    apply(new Element('div', classes: ['column'], content: content), mods);

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
// TODO: add Nesting
// TODO: add Gap
// TODO: add Options
