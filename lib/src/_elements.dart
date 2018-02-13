import 'package:domino/domino.dart';

import '_base.dart';
import '_modifiers.dart';

// https://bulma.io/documentation/elements/box/

class Box extends BulmaComponent {
  final _content;

  Box({content}) : _content = content;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['box'], content: _content);
  }
}

class Button extends BulmaComponent {
  final EventHandler _onClick;
  final _content;

  Button({
    EventHandler onClick,
    dynamic content,
    TypeMod typeMod,
  })
      : _onClick = onClick,
        _content = content {
    this.typeMod = typeMod;
  }

  @override
  Element createElement(BuildContext context) {
    return new Element(
      'button',
      classes: ['button'],
      content: _content,
    )..onClick(_onClick);
  }
}

class Content extends BulmaComponent {
  final _content;

  Content({content}) : _content = content;

  @override
  Element createElement(BuildContext context) {
    return new Element('content', content: _content);
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
