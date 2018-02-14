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

Element delete({Mods mods, EventHandler onClick}) =>
    apply(new Element('button', classes: ['delete'])..onClick(onClick), mods);

Element notification({Mods mods, content, EventHandler onDelete}) {
  return apply(
      new Element(
        'div',
        classes: ['notification'],
        content: [
          delete(onClick: onDelete),
          content,
        ],
      ),
      mods);
}

Element progress({Mods mods, int value, int max, content}) {
  final elem = apply(
      new Element(
        'progress',
        classes: ['progress'],
        attrs: {'value': '$value', 'max': '$max'},
      ),
      mods);
  if (content != null) {
    elem.content = content;
  } else {
    elem.content = '${(value * 100 / max).round()}%';
  }
  return elem;
}

// TODO: add icon
// TODO: add image
// TODO: add table
// TODO: add tag
// TODO: add title
