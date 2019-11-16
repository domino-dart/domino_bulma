import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/elements/box/

Element box(content) => div([clazz('box'), content]);

Element button(content, {Function onClick}) =>
    Element('button', [clazz('button'), on('click', onClick), content]);

Element content(content) => Element('content', content);

Element delete({mods, Function onClick}) =>
    Element('button', [clazz('delete'), on('click', onClick), mods]);

Element notification(content, {Function onDelete}) => div([
      clazz('notification'),
      delete(onClick: onDelete),
      content,
    ]);

Element progress({mods, int value, int max, content}) {
  if (content != null && value != null) {
    content = '${(value * 100 / max).round()}%';
  }
  return Element('progress', [
    clazz('progress'),
    mods,
    attr('value', value?.toString()),
    attr('max', '$max'),
    content,
  ]);
}

Element tag({mods, content}) => Element('span', [clazz('tag'), mods, content]);

Element tags({mods, content, bool hasAddons}) => div(
    [clazz('tags'), if (hasAddons ?? false) Modifier.hasAddons, mods, content]);

Element title(
        {String tag, int level = 1, int size, bool spaced, String text}) =>
    Element(tag ?? 'h$level', [
      clazz('title'),
      if (size != null) clazz('is-$size'),
      if (spaced ?? false) Modifier.spaced,
      text,
    ]);

Element subtitle(
        {String tag, int level = 2, int size, bool spaced, String text}) =>
    Element(tag ?? 'h$level', [
      clazz('subtitle'),
      if (size != null) clazz('is-$size'),
      if (spaced ?? false) Modifier.spaced,
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
  return Element('figure', [
    clazz('image'),
    mods,
    Element('img', [attr('src', url)]),
  ]);
}

Element icon(content, {mods}) {
  return Element('span', [clazz('icon'), mods, content]);
}

Element table({thead, tfoot, tbody, mods}) {
  return Element('table', [
    clazz('table'),
    mods,
    if (thead != null) Element('thead', thead),
    if (tbody != null) Element('tbody', tbody),
    if (tfoot != null) Element('tfoot', tfoot),
  ]);
}

Element tr(content) => Element('tr', content);
Element th(content) => Element('th', content);
Element td(content) => Element('td', content);
