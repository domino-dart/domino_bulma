import 'package:domino/domino.dart';

import '_modifiers.dart';

abstract class BulmaComponent extends Component {
  TypeMod typeMod;
  SizeMod sizeMod;
  FloatMod floatMod;
  bool isOutlined;
  bool isLoading;
  bool isDisabled;
  bool isMarginless;
  bool isPaddingless;
  bool isClipped;

  Element createElement(BuildContext context);

  @override
  build(BuildContext context) {
    final elem = createElement(context);
    _enhanceElement(elem);
    return elem;
  }

  void _enhanceElement(Element element) {
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
  }
}

/*
is-radiusless	Removes any radius
is-shadowless	Removes any shadow
is-unselectable	Prevents the text from being selectable
is-invisible	Adds visibility hidden
*/
