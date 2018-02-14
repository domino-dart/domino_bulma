import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

class Mods {
  final TypeMod _typeMod;
  final SizeMod _sizeMod;
  final FloatMod _floatMod;
  final bool _outlined;
  final bool _loading;
  final bool _disabled;
  final bool _marginless;
  final bool _paddingless;
  final bool _clipped;

  Mods({
    TypeMod typeMod,
    SizeMod sizeMod,
    FloatMod floatMod,
    bool outlined,
    bool loading,
    bool disabled,
    bool marginless,
    bool paddingless,
    bool clipped,
  })
      : _typeMod = typeMod,
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
      ..addClass(typeModClass(_typeMod))
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

enum TypeMod { primary, link, info, success, warning, danger }
enum SizeMod { small, medium, large }
enum FloatMod { clearfix, pulledLeft, pulledRight }

String typeModClass(TypeMod typeMod) {
  if (typeMod == null) return null;
  switch (typeMod) {
    case TypeMod.primary:
      return 'is-primary';
    case TypeMod.link:
      return 'is-link';
    case TypeMod.info:
      return 'is-info';
    case TypeMod.success:
      return 'is-success';
    case TypeMod.warning:
      return 'is-warning';
    case TypeMod.danger:
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
