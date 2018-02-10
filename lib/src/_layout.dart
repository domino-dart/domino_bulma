import 'package:domino/domino.dart';

import '_base.dart';

// https://bulma.io/documentation/layout/container/

class Container extends BulmaComponent {
  final List _children;
  Container({List children}) : _children = children;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['container'], children: _children);
  }
}

// TODO: add Level
// TODO: add Media Object
// TODO: add Hero
// TODO: add Section
// TODO: add Footer
// TODO: add Tiles
