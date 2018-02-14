import 'package:domino/domino.dart';

import '_elements.dart';
import '_modifiers.dart';

// https://bulma.io/documentation/components/breadcrumb/

Element breadcrumb({Mods mods, List items}) {
  final children =
      items.map((item) => new Element('li', content: item)).toList();
  children.last.addClass('is-active');
  return apply(
      new Element(
        'nav',
        classes: ['breadcrumb'],
        attrs: {'aria-label': 'breadcrumbs'},
        content: new Element('ul', content: children),
      ),
      mods);
}

Element card({Mods mods, String title, content}) {
  final children = [];
  var headerChildren;
  if (title != null) {
    headerChildren ??= [];
    headerChildren.add(new Element('p', classes: ['card-header-title']));
  }
  // TODO: add header icon
  if (headerChildren != null) {
    children.add(new Element('header',
        classes: ['card-header'], content: headerChildren));
  }

  // TODO: add image

  if (content != null) {
    children
        .add(new Element('div', classes: ['card-content'], content: content));
  }

  // TODO: add footer

  return apply(new Element('div', classes: ['card'], content: children), mods);
}

Element message({Mods mods, String title, EventHandler onDelete, content}) {
  final children = [];
  if (title != null || onDelete != null) {
    children.add(new Element('div', classes: [
      'message-header'
    ], content: [
      new Element('p', content: title),
      delete(onClick: onDelete),
    ]));
  }
  if (content != null) {
    children
        .add(new Element('div', classes: ['message-body'], content: content));
  }
  return apply(
      new Element('article', classes: ['message'], content: children), mods);
}

// TODO: add Dropdown
// TODO: add Menu
// TODO: add Modal
// TODO: add Navbar
// TODO: add Pagination
// TODO: add Panel
// TODO: add Tabs
