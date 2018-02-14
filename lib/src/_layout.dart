import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/layout/container/

Element container({Mods mods, content}) =>
    apply(new Element('div', classes: ['container'], content: content), mods);

// TODO: add Level
// TODO: add Media Object
// TODO: add Hero
// TODO: add Section
// TODO: add Footer
// TODO: add Tiles
