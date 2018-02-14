import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

class Mods {
  final TypeMod typeMod;
  final SizeMod sizeMod;
  final FloatMod floatMod;
  final bool outlined;
  final bool loading;
  final bool disabled;
  final bool marginless;
  final bool paddingless;
  final bool clipped;

  Mods({
    this.typeMod,
    this.sizeMod,
    this.floatMod,
    this.outlined,
    this.loading,
    this.disabled,
    this.marginless,
    this.paddingless,
    this.clipped,
  });

  Element apply(Element element) {
    element
      ..addClass(typeModClass(typeMod))
      ..addClass(sizeModClass(sizeMod))
      ..addClass(floatModClass(floatMod))
      ..addClass(outlinedClass(outlined))
      ..addClass(loadingClass(loading))
      ..addClass(marginlessClass(marginless))
      ..addClass(paddinglessClass(paddingless))
      ..addClass(clippedClass(clipped));
    applyDisabledAttr(element, disabled);
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
