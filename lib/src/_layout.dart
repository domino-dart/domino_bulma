import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/layout/container/

// TODO: is-widescreen
// TODO: is-fullhd
Element container({Mods mods, content, bool fluid}) => apply(
    new Element('div', classes: ['container'], content: content)
      ..addClass('container')
      ..addClass(fluidClass(fluid)),
    mods);

Iterable _iterate(items) => items is List ? items : [items];
_levelItems(items) => _iterate(items)
    .map((item) => new Element('div', classes: ['level-item'], content: item))
    .toList();

Element level({Mods mods, left, content, right}) {
  final root = apply(new Element('div', classes: ['level']), mods);
  final children = [];
  if (left != null) {
    children.add(new Element('div',
        classes: ['level-left'], content: _levelItems(left)));
  }
  if (content != null) {
    children.addAll(_levelItems(content));
  }
  if (right != null) {
    children.add(new Element('div',
        classes: ['level-right'], content: _levelItems(right)));
  }
  root.content = children;
  return root;
}

Element media({Mods mods, left, content, right}) {
  return apply(
      new Element(
        'div',
        classes: ['media'],
        content: [
          new Element('div', classes: ['media-left'], content: left),
          new Element('div', classes: ['media-content'], content: content),
          new Element('div', classes: ['media-right'], content: right),
        ],
      ),
      mods);
}

Element hero({Mods mods, head, body, foot}) {
  final root = apply(new Element('div', classes: ['hero']), mods);
  final children = [];
  if (head != null) {
    children.add(new Element('div', classes: ['hero-head'], content: head));
  }
  if (body != null) {
    children.add(new Element('div', classes: ['hero-body'], content: body));
  }
  if (foot != null) {
    children.add(new Element('div', classes: ['hero-foot'], content: foot));
  }
  root.content = children;
  return root;
}

Element section({Mods mods, content}) =>
    apply(new Element('section', classes: ['section'], content: content), mods);

Element footer({Mods mods, content}) =>
    apply(new Element('footer', classes: ['footer'], content: content), mods);

// TODO: add Tiles
