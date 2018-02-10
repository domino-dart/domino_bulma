import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

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
String clippedClass(bool isClipped) =>
  _class(isClipped, 'is-clipped');

Element applyDisabledAttr(Element element, bool isDisabled) {
  if (isDisabled == true) {
    element.attr('disabled', null);
  }
  return element;
}
