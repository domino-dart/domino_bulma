import 'package:domino/domino.dart';

import '_base.dart';

// https://bulma.io/documentation/columns/basics/

class Columns extends BulmaComponent {
  final List<Column> _columns;
  Columns(List<Column> columns) : _columns = columns;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['columns'], children: _columns);
  }
}

class Column extends BulmaComponent {
  final List _children;
  Column({List children}) : _children = children;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['column'], children: _children);
  }
}

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
// TODO: add Nesting
// TODO: add Gap
// TODO: add Options
