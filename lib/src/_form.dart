import 'package:domino/domino.dart';

import '_base.dart';
import '_modifiers.dart';

// https://bulma.io/documentation/form/general/

enum InputType { text, password, email, tel }

class FormField extends BulmaComponent {
  final String label;
  final Component input;
  final String help;

  TypeMod validatedType;

  FormField({this.label, this.input, this.help});

  @override
  Element createElement(BuildContext context) {
    return new Element(
      'div',
      classes: ['field'],
      children: [
        new Element('label', classes: ['label'], text: label),
        new Element('div', classes: ['control'], children: [input]),
        help == null
            ? null
            : new Element(
                'p',
                classes: ['help', typeModClass(validatedType)],
                text: help,
              ),
      ],
    );
  }
}

FormField _parentField(BuildContext context) {
  return context.ancestors
      .take(3)
      .firstWhere((p) => p is FormField, orElse: () => null);
}

class Input extends BulmaComponent {
  final InputType _type;
  Input({InputType type}) : _type = type;

  @override
  Element createElement(BuildContext context) {
    final elem = new Element('input');
    if (_type != null) {
      switch (_type) {
        case InputType.text:
          elem.attr('type', 'text');
          break;
        case InputType.password:
          elem.attr('type', 'password');
          break;
        case InputType.email:
          elem.attr('type', 'email');
          break;
        case InputType.tel:
          elem.attr('type', 'tel');
          break;
      }
    }
    final parent = _parentField(context);
    if (parent != null) {
      typeMod = parent.validatedType;
    }
    return elem;
  }
}

// TODO: add icons FormField
// TODO: add Textarea
// TODO: add Select
// TODO: add Checkbox
// TODO: add Radio
// TODO: add File
