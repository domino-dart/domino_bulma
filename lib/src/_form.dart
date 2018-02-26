import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

// https://bulma.io/documentation/form/general/

Element formField({
  mods,
  String label,
  Element input,
  String help,
  Setter color,
}) =>
    div([
      clazz('field'),
      mods,
      new Element('label', [clazz('label'), label]),
      div([clazz('control', input.append(color))]),
      addIf(
          help != null,
          () => new Element('p', [
                clazz('help', color, help),
              ])),
    ]);

Element input(String type, [mods]) =>
    new Element('input', [attr('type', type), mods]);

// TODO: add icons FormField
// TODO: add Textarea
// TODO: add Select
// TODO: add Checkbox
// TODO: add Radio
// TODO: add File
