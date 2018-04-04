import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/elements/box/

Element box(content) => div([clazz('box'), content]);

Element button(content, {EventHandler onClick}) =>
    new Element('button', [clazz('button'), on('click', onClick), content]);

Element content(content) => new Element('content', content);

Element delete({mods, EventHandler onClick}) =>
    new Element('button', [clazz('delete'), on('click', onClick), mods]);

Element notification(content, {EventHandler onDelete}) => div([
      clazz('notification'),
      delete(onClick: onDelete),
      content,
    ]);

Element progress({mods, int value, int max, content}) {
  if (content != null) {
    content = '${(value * 100 / max).round()}%';
  }
  return new Element('progress', [
    clazz('progress'),
    attr('value', '$value'),
    attr('max', '$max'),
    mods,
    content,
  ]);
}

Element tag({mods, content}) =>
    new Element('span', [clazz('tag'), mods, content]);

Element tags({mods, content, bool hasAddons}) =>
    div([clazz('tags'), addIf(hasAddons, Modifier.hasAddons), mods, content]);

Element title({String tag, int level: 1, int size, bool spaced, String text}) =>
    new Element(tag ?? 'h$level', [
      clazz('title'),
      addIf(size != null, clazz('is-$size')),
      addIf(spaced, Modifier.spaced),
      text,
    ]);

Element subtitle(
        {String tag, int level: 2, int size, bool spaced, String text}) =>
    new Element(tag ?? 'h$level', [
      clazz('subtitle'),
      addIf(size != null, clazz('is-$size')),
      addIf(spaced, Modifier.spaced),
      text,
    ]);

final _title = title;
final _subtitle = subtitle;

List<Element> titles(
    {String tag, String title, String subtitle, int size, bool spaced}) {
  return [
    _title(
      tag: tag,
      size: size,
      spaced: spaced,
      text: title,
    ),
    _subtitle(
      tag: tag,
      size: size == null ? null : size + 2,
      spaced: spaced,
      text: subtitle,
    ),
  ];
}

Element image({mods, String url}) {
  return new Element('figure', [
    clazz('image'),
    mods,
    new Element('img', [attr('src', url)]),
  ]);
}

// TODO: add icon
// TODO: add table
