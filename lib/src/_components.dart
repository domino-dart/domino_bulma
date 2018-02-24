import 'package:domino/domino.dart';
import 'package:domino/helpers.dart' show div;

import '_elements.dart';

// https://bulma.io/documentation/components/breadcrumb/

Element breadcrumb({mods, List items}) {
  final children = [];
  for (int i = 0; i < items.length; i++) {
    var item = items[i];
    if (i == items.length - 1) {
      item = [clazz('is-active'), item];
    }
    children.add(new Element('li', item));
  }
  return new Element(
    'nav',
    [
      clazz('breadcrumb'),
      attr('aria-label', 'breadcrumbs'),
      mods,
      new Element('ul', children),
    ],
  );
}

Element card({mods, String title, content}) {
  final children = [];
  var headerChildren;
  if (title != null) {
    headerChildren ??= [];
    headerChildren.add(new Element('p', [clazz('card-header-title'), title]));
  }
  // TODO: add header icon
  if (headerChildren != null) {
    children.add(new Element('header', [clazz('card-header'), headerChildren]));
  }

  // TODO: add image

  if (content != null) {
    children.add(div([clazz('card-content'), content]));
  }

  // TODO: add footer

  return div([clazz('card'), mods, children]);
}

Element message({mods, String title, EventHandler onDelete, content}) {
  final children = [];
  if (title != null || onDelete != null) {
    children.add(div([
      clazz('message-header'),
      mods,
      new Element('p', title),
      delete(onClick: onDelete),
    ]));
  }
  if (content != null) {
    children.add(div([clazz('message-body'), content]));
  }
  return new Element('article', [clazz('message'), mods, children]);
}

// TODO: add Dropdown
// TODO: add Menu
// TODO: add Modal
// TODO: add Navbar
// TODO: add Pagination
// TODO: add Panel
// TODO: add Tabs
