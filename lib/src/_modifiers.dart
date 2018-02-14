import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

class Mods {
  final String _color;
  final String _size;
  final String _float;
  final bool _outlined;
  final bool _loading;
  final bool _disabled;
  final bool _marginless;
  final bool _paddingless;
  final bool _clipped;

  Mods({
    String color,
    String size,
    String float,
    bool outlined,
    bool loading,
    bool disabled,
    bool marginless,
    bool paddingless,
    bool clipped,
  })
      : _color = color,
        _size = size,
        _float = float,
        _outlined = outlined,
        _loading = loading,
        _disabled = disabled,
        _marginless = marginless,
        _paddingless = paddingless,
        _clipped = clipped;

  Element apply(Element element) {
    element
      ..addClass(_color)
      ..addClass(_size)
      ..addClass(_float)
      ..addClass(outlinedClass(_outlined))
      ..addClass(loadingClass(_loading))
      ..addClass(marginlessClass(_marginless))
      ..addClass(paddinglessClass(_paddingless))
      ..addClass(clippedClass(_clipped));
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

String outlinedClass(bool isOutlined) => _class(isOutlined, 'is-outlined');
String loadingClass(bool isLoading) => _class(isLoading, 'is-loading');
String marginlessClass(bool isMarginless) =>
    _class(isMarginless, 'is-marginless');
String paddinglessClass(bool isPaddingless) =>
    _class(isPaddingless, 'is-paddingless');
String clippedClass(bool isClipped) => _class(isClipped, 'is-clipped');
String multiLineClass(bool isMultiline) => _class(isMultiline, 'is-multiline');
String centeredClass(bool isCentered) => _class(isCentered, 'is-centered');

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
