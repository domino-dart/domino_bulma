import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

// TODO: display classes (show, hide) from https://bulma.io/documentation/modifiers/responsive-helpers/
// TODO: typography helpers from https://bulma.io/documentation/modifiers/typography-helpers/

class Mods {
  final String _color;
  final String _size;
  final String _float;
  final bool _outlined;
  final bool _loading;
  final bool _disabled;
  final bool _overlay;
  final bool _clipped;
  final bool _noMargin;
  final bool _noPadding;
  final bool _noRadius;
  final bool _noShadow;
  final bool _unselectable;
  final bool _invisible;

  Mods({
    String color,
    String size,
    String float,
    bool outlined,
    bool loading,
    bool disabled,
    bool overlay,
    bool clipped,
    bool noMargin,
    bool noPadding,
    bool noRadius,
    bool noShadow,
    bool unselectable,
    bool invisible,
  })
      : _color = color,
        _size = size,
        _float = float,
        _outlined = outlined,
        _loading = loading,
        _disabled = disabled,
        _overlay = overlay,
        _clipped = clipped,
        _noMargin = noMargin,
        _noPadding = noPadding,
        _noRadius = noRadius,
        _noShadow = noShadow,
        _unselectable = unselectable,
        _invisible = invisible;

  Element apply(Element element) {
    element
      ..addClass(_color)
      ..addClass(_size)
      ..addClass(_float)
      ..addClass(_class(_outlined, 'is-outlined'))
      ..addClass(_class(_loading, 'is-loading'))
      ..addClass(_class(_overlay, 'is-overlay'))
      ..addClass(_class(_clipped, 'is-clipped'))
      ..addClass(_class(_noMargin, 'is-marginless'))
      ..addClass(_class(_noPadding, 'is-paddingless'))
      ..addClass(_class(_noRadius, 'is-radiusless'))
      ..addClass(_class(_noShadow, 'is-shadowless'))
      ..addClass(_class(_unselectable, 'is-unselectable'))
      ..addClass(_class(_invisible, 'is-invisible'));
    applyDisabledAttr(element, _disabled);
    return element;
  }
}

abstract class Color {
  static const String primary = 'is-primary';
  static const String link = 'is-link';
  static const String info = 'is-info';
  static const String success = 'is-success';
  static const String warning = 'is-warning';
  static const String danger = 'is-danger';

  static const String light = 'is-light';
  static const String dark = 'is-dark';
}

abstract class Size {
  static const String small = 'is-small';
  static const String medium = 'is-medium';
  static const String large = 'is-large';
}

abstract class Float {
  static const String clearfix = 'is-clearfix';
  static const String pulledLeft = 'is-pulled-left';
  static const String pulledRight = 'is-pulled-right';
}

String _class(bool boolValue, String className) =>
    (boolValue == true) ? className : null;

String noGapClass(bool noGap) => _class(noGap, 'is-gapless');
String multiLineClass(bool multiLine) => _class(multiLine, 'is-multiline');
String centeredClass(bool centered) => _class(centered, 'is-centered');
String fluidClass(bool fluid) => _class(fluid, 'is-fluid');

Element applyDisabledAttr(Element element, bool isDisabled) {
  if (isDisabled == true) {
    element.attr('disabled', null);
  }
  return element;
}

Element apply(Element element, Mods mods) {
  if (mods != null) {
    mods.apply(element);
  }
  return element;
}
