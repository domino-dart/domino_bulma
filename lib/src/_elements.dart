import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/elements/box/

Element box({Mods mods, content}) =>
    apply(new Element('div', classes: ['box'], content: content), mods);

Element button({
  Mods mods,
  EventHandler onClick,
  dynamic content,
}) =>
    apply(new Element('button', classes: ['button'], content: content), mods)
      ..onClick(onClick);

Element content({Mods mods, content}) =>
    apply(new Element('content', content: content), mods);

Element delete({Mods mods}) =>
    apply(new Element('button', classes: ['delete']), mods);

// TODO: add icon
// TODO: add image
// TODO: add notification
// TODO: add progress
// TODO: add table
// TODO: add tag
// TODO: add title
