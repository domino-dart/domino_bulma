import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/layout/container/

// TODO: is-widescreen
// TODO: is-fullhd
Element container(content, {bool fluid}) => div([
      clazz('container'),
      fluid == true ? Modifier.fluid : null,
      content,
    ]);

Iterable _iterate(items) => items is List ? items : [items];
_levelItems(items) =>
    _iterate(items).map((item) => div([clazz('level-item'), item])).toList();

Element level({mods, left, content, right}) {
  final children = [];
  if (left != null) {
    children.add(div([clazz('level-left'), _levelItems(left)]));
  }
  if (content != null) {
    children.addAll(_levelItems(content));
  }
  if (right != null) {
    children.add(div([clazz('level-right'), _levelItems(right)]));
  }
  return div([clazz('level'), mods, children]);
}

Element media({mods, left, content, right}) {
  return div([
    clazz('media'),
    mods,
    div([clazz('media-left'), left]),
    div([clazz('media-content'), content]),
    div([clazz('media-right'), right]),
  ]);
}

Element hero({mods, head, body, foot}) {
  final children = [];
  if (head != null) {
    children.add(div([clazz('hero-head'), head]));
  }
  if (body != null) {
    children.add(div([clazz('hero-body'), body]));
  }
  if (foot != null) {
    children.add(div([clazz('hero-foot'), foot]));
  }
  return div([clazz('hero'), mods, children]);
}

Element section(content) =>
    new Element('section', [clazz('section'), content]);

Element footer(content) => new Element('footer', [clazz('footer'), content]);

// TODO: add Tiles
