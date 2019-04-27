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
    children.add(Element('li', item));
  }
  return Element(
    'nav',
    [
      clazz('breadcrumb'),
      attr('aria-label', 'breadcrumbs'),
      mods,
      Element('ul', children),
    ],
  );
}

Element card({mods, String title, content}) {
  final children = [];
  List headerChildren;
  if (title != null) {
    headerChildren ??= [];
    headerChildren.add(Element('p', [clazz('card-header-title'), title]));
  }
  // TODO: add header icon
  if (headerChildren != null) {
    children.add(Element('header', [clazz('card-header'), headerChildren]));
  }

  // TODO: add image

  if (content != null) {
    children.add(div([clazz('card-content'), content]));
  }

  // TODO: add footer

  return div([clazz('card'), mods, children]);
}

Element message({mods, String title, Function onDelete, content}) {
  final children = [];
  if (title != null || onDelete != null) {
    children.add(div([
      clazz('message-header'),
      mods,
      Element('p', title),
      delete(onClick: onDelete),
    ]));
  }
  if (content != null) {
    children.add(div([clazz('message-body'), content]));
  }
  return Element('article', [clazz('message'), mods, children]);
}

// TODO: add Dropdown
// TODO: add Menu

Element modal({header, content, footer, close, bool isActive = false}) {
  final isCard = header != null || footer != null;
  final renderClose = close != null || !isCard;
  return Element('div', [
    clazz('modal'),
    isActive ? Modifier.active : null,
    Element('div', clazz('modal-background')),
    isCard
        ? Element('div', [
            clazz('modal-card'),
            Element('header', [clazz('modal-card-head'), header]),
            Element('section', [clazz('modal-card-body'), content]),
            Element('footer', [clazz('modal-card-foot'), footer]),
          ])
        : Element('div', [
            clazz('modal-content'),
            content,
          ]),
    renderClose
        ? Element('button',
            [clazz('modal-close'), attr('aria-label', 'close'), close])
        : null,
  ]);
}

// TODO: add Navbar

Element pagination({mods, previous, next, List items}) {
  return Element('nav', [
    clazz('pagination'),
    attr('role', 'navigation'),
    attr('aria-label', 'navigation'),
    mods,
    previous == null
        ? null
        : Element('a', [clazz('pagination-previous'), previous]),
    next == null ? null : Element('a', [clazz('pagination-next'), next]),
    Element('ul', [
      clazz('pagination-list'),
      items.map((item) {
        if (item is String && item == '...') {
          return Element('li', [
            Element(
                'span', [clazz('pagination-ellipsis'), innerHtml('&hellip;')]),
          ]);
        } else {
          return Element('li', [
            Element('a', [clazz('pagination-link'), item]),
          ]);
        }
      }).toList(),
    ]),
  ]);
}

// TODO: add Panel

Element tabs({mods, List items}) {
  return Element('div', [
    mods,
    Element('ul', [
      items.map((item) => Element('li', [item])).toList(),
    ]),
  ]);
}
