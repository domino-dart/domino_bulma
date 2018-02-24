import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

// https://bulma.io/documentation/form/general/

enum InputType { text, password, email, tel }
Map<InputType, Setter> _inputTypes = {
  InputType.text: attr('type', 'text'),
  InputType.password: attr('type', 'password'),
  InputType.email: attr('type', 'email'),
  InputType.tel: attr('type', 'tel'),
};

class FormField extends Component {
  final _mods;
  final String _label;
  final dynamic _input;
  final String _help;

  Setter color;

  FormField({
    mods,
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
    return div(
      [
        clazz('field'),
        _mods,
        new Element('label', [clazz('label'), _label]),
        div([clazz('control'), _input]),
        _help == null
            ? null
            : new Element(
                'p',
                [clazz('help'), color, _help],
              ),
      ],
    );
  }
}

FormField _parentField(BuildContext context) {
  return context.components
      .firstWhere((p) => p is FormField, orElse: () => null);
}

class Input extends Component {
  final Setter _type;
  final _mods;
  var _element;

  Input({InputType type, mods})
      : _type = _inputTypes[type ?? InputType.text],
        _mods = mods;

  String get value => _element?.value;

  @override
  Element build(BuildContext context) {
    final parent = _parentField(context);
    final elem = new Element('input', [
      _type,
      _mods,
      parent?.color,
      afterInsert(_setElement),
    ]);
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
