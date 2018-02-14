import 'package:domino/domino.dart';

import '_modifiers.dart';

// https://bulma.io/documentation/form/general/

enum InputType { text, password, email, tel }

class FormField extends Component {
  final Mods _mods;
  final String _label;
  final dynamic _input;
  final String _help;

  String color;

  FormField({
    Mods mods,
    String label,
    dynamic input,
    String help,
    this.color,
  })
      : _mods = mods,
        _label = label,
        _input = input,
        _help = help;

  @override
  Element build(BuildContext context) {
    final elem = new Element(
      'div',
      classes: ['field'],
      content: [
        new Element('label', classes: ['label'], content: _label),
        new Element('div', classes: ['control'], content: _input),
        _help == null
            ? null
            : new Element(
                'p',
                classes: ['help', color],
                content: _help,
              ),
      ],
    );
    apply(elem, _mods);
    return elem;
  }
}

FormField _parentField(BuildContext context) {
  return context.ancestors
      .firstWhere((p) => p is FormField, orElse: () => null);
}

class Input extends Component {
  final InputType _type;
  final Mods _mods;
  var _element;

  Input({InputType type, Mods mods})
      : _type = type,
        _mods = mods;

  String get value => _element?.value;

  @override
  Element build(BuildContext context) {
    final elem = new Element('input');
    apply(elem, _mods);
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
      elem.addClass(parent.color);
    }
    elem.afterInsert(_setElement);
    return elem;
  }

  void _setElement(e) {
    _element = e;
  }
}

// TODO: add icons FormField
// TODO: add Textarea
// TODO: add Select
// TODO: add Checkbox
// TODO: add Radio
// TODO: add File
