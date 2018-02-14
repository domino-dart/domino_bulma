import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

class Mods {
  final TypeMod typeMod;
  final SizeMod sizeMod;
  final FloatMod floatMod;
  final bool isOutlined;
  final bool isLoading;
  final bool isDisabled;
  final bool isMarginless;
  final bool isPaddingless;
  final bool isClipped;

  Mods({
    this.typeMod,
    this.sizeMod,
    this.floatMod,
    this.isOutlined,
    this.isLoading,
    this.isDisabled,
    this.isMarginless,
    this.isPaddingless,
    this.isClipped,
  });

  Element apply(Element element) {
    element
      ..addClass(typeModClass(typeMod))
      ..addClass(sizeModClass(sizeMod))
      ..addClass(floatModClass(floatMod))
      ..addClass(outlinedClass(isOutlined))
      ..addClass(loadingClass(isLoading))
      ..addClass(marginlessClass(isMarginless))
      ..addClass(paddinglessClass(isPaddingless))
      ..addClass(clippedClass(isClipped));
    applyDisabledAttr(element, isDisabled);
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
