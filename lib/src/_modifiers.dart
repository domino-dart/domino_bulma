import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

class Mods {
  final MainColor _mainColor;
  final SizeMod _sizeMod;
  final FloatMod _floatMod;
  final bool _outlined;
  final bool _loading;
  final bool _disabled;
  final bool _marginless;
  final bool _paddingless;
  final bool _clipped;

  Mods({
    MainColor mainColor,
    SizeMod sizeMod,
    FloatMod floatMod,
    bool outlined,
    bool loading,
    bool disabled,
    bool marginless,
    bool paddingless,
    bool clipped,
  })
      : _mainColor = mainColor,
        _sizeMod = sizeMod,
        _floatMod = floatMod,
        _outlined = outlined,
        _loading = loading,
        _disabled = disabled,
        _marginless = marginless,
        _paddingless = paddingless,
        _clipped = clipped;

  Element apply(Element element) {
    element
      ..addClass(mainColorClass(_mainColor))
      ..addClass(sizeModClass(_sizeMod))
      ..addClass(floatModClass(_floatMod))
      ..addClass(outlinedClass(_outlined))
      ..addClass(loadingClass(_loading))
      ..addClass(marginlessClass(_marginless))
      ..addClass(paddinglessClass(_paddingless))
      ..addClass(clippedClass(_clipped));
    applyDisabledAttr(element, _disabled);
    return element;
  }
}

enum MainColor { primary, link, info, success, warning, danger }
enum SizeMod { small, medium, large }
enum FloatMod { clearfix, pulledLeft, pulledRight }

String mainColorClass(MainColor mainColor) {
  if (mainColor == null) return null;
  switch (mainColor) {
    case MainColor.primary:
      return 'is-primary';
    case MainColor.link:
      return 'is-link';
    case MainColor.info:
      return 'is-info';
    case MainColor.success:
      return 'is-success';
    case MainColor.warning:
      return 'is-warning';
    case MainColor.danger:
      return 'is-danger';
  }
  return null;
}

String sizeModClass(SizeMod sizeMod) {
  if (sizeMod == null) return null;
  switch (sizeMod) {
    case SizeMod.small:
      return 'is-small';
    case SizeMod.medium:
      return 'is-medium';
    case SizeMod.large:
      return 'is-large';
  }
  return null;
}

String floatModClass(FloatMod floatMod) {
  if (floatMod == null) return null;
  switch (floatMod) {
    case FloatMod.clearfix:
      return 'is-clearfix';
    case FloatMod.pulledLeft:
      return 'is-pulled-left';
    case FloatMod.pulledRight:
      return 'is-pulled-right';
  }
  return null;
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
String multilineClass(bool isMultiline) => _class(isMultiline, 'is-multiline');
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
