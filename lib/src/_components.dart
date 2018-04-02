import 'package:domino/domino.dart';
import 'package:domino/helpers.dart' show div;

import '_elements.dart';
import '_modifiers.dart';

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

Element modal({header, content, footer, close, bool isActive: false}) {
  final isCard = header != null || footer != null;
  final renderClose = close != null || !isCard;
  return new Element('div', [
    clazz('modal'),
    isActive ? Modifier.active : null,
    new Element('div', clazz('modal-background')),
    isCard
        ? new Element('div', [
            clazz('modal-card'),
            new Element('header', [clazz('modal-card-head'), header]),
            new Element('section', [clazz('modal-card-body'), content]),
            new Element('footer', [clazz('modal-card-foot'), footer]),
          ])
        : new Element('div', [
            clazz('modal-content'),
            content,
          ]),
    renderClose
        ? new Element('button',
            [clazz('modal-close'), attr('aria-label', 'close'), close])
        : null,
  ]);
}

// TODO: add Navbar

Element pagination({mods, previous, next, List items}) {
  return new Element('nav', [
    clazz('pagination'),
    attr('role', 'navigation'),
    attr('aria-label', 'navigation'),
    mods,
    previous == null
        ? null
        : new Element('a', [clazz('pagination-previous'), previous]),
    next == null ? null : new Element('a', [clazz('pagination-next'), next]),
    new Element('ul', [
      clazz('pagination-list'),
      items.map((item) {
        if (item is String && item == '...') {
          return new Element('li', [
            // TODO: use &hellip;
            new Element('span', [clazz('pagination-ellipsis'), '...']),
          ]);
        } else {
          return new Element('li', [
            new Element('a', [clazz('pagination-link'), item]),
          ]);
        }
      }).toList(),
    ]),
  ]);
}

// TODO: add Panel

Element tabs({mods, List items}) {
  return new Element('div', [
    mods,
    new Element('ul', [
      items.map((item) => new Element('li', [item])).toList(),
    ]),
  ]);
}
