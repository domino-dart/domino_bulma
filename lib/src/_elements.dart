import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

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

// TODO: add icon
// TODO: add image
// TODO: add table
// TODO: add tag
// TODO: add title
