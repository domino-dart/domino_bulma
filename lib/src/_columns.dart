import 'package:domino/domino.dart';

import '_base.dart';

// https://bulma.io/documentation/columns/basics/

class Columns extends BulmaComponent {
  final List<Column> _columns;
  Columns(List<Column> columns) : _columns = columns;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['columns'], content: _columns);
  }
}

class Column extends BulmaComponent {
  final _content;
  Column({dynamic content}) : _content = content;

  @override
  Element createElement(BuildContext context) {
    return new Element('div', classes: ['column'], content: _content);
  }
}

// TODO: add Basics
// TODO: add Sizes
// TODO: add Responsiveness
// TODO: add Nesting
// TODO: add Gap
// TODO: add Options
