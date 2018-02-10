import 'package:domino/domino.dart';

import '_base.dart';
import '_modifiers.dart';

// https://bulma.io/documentation/elements/box/

class Box extends BulmaComponent {
  final List _children;

  Box({List children}) : _children = children;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['box'], children: _children);
  }
}

class Button extends BulmaComponent {
  final EventHandler _onClick;
  final String _text;
  final List _children;

  Button({
    EventHandler onClick,
    String text,
    List children,
    TypeMod typeMod,
  })
      : _onClick = onClick,
        _text = text,
        _children = children {
    this.typeMod = typeMod;
  }

  @override
  Element createElement(BuildContext context) {
    return new Element(
      'button',
      classes: ['button'],
      text: _text,
      children: _children,
    )..onClick(_onClick);
  }
}

class Content extends BulmaComponent {
  final List _children;

  Content({List children}) : _children = children;

  @override
  Element createElement(BuildContext context) {
    return new Element('content', children: _children);
  }
}

class Delete extends BulmaComponent {
  final String _tag;

  Delete() : _tag = 'a';
  Delete.button() : _tag = 'button';

  @override
  Element createElement(BuildContext context) {
    return new Element(_tag, classes: ['delete']);
  }
}

// TODO: add icon
// TODO: add image
// TODO: add notification
// TODO: add progress
// TODO: add table
// TODO: add tag
// TODO: add title
