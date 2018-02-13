import 'package:domino/domino.dart';

import '_base.dart';

// https://bulma.io/documentation/layout/container/

class Container extends BulmaComponent {
  final _content;
  Container({dynamic content}) : _content = content;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['container'], content: _content);
  }
}

// TODO: add Level
// TODO: add Media Object
// TODO: add Hero
// TODO: add Section
// TODO: add Footer
// TODO: add Tiles
