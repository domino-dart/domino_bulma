import 'package:domino/domino.dart';
import 'package:domino/helpers.dart';

import '_modifiers.dart';

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
      div([clazz('control'), input.append(color)]),
      addIf(help != null, () => new Element('p', [clazz('help'), color, help])),
    ]);

Element input(String type, [mods]) =>
    new Element('input', [clazz('input'), attr('type', type), mods]);

Element select({mods, options}) =>
    div([clazz('select'), mods, new Element('select', options)]);

Element option({String value, bool selected, content}) =>
    new Element('option', [
      attr('value', value),
      addIf(selected, () => attr('selected', 'selected')),
      content,
    ]);

Element checkbox({label, mods, Symbol symbol, bool disabled}) => new Element(
      'label',
      [
        clazz('checkbox'),
        addIf(disabled, Modifier.disabled),
        new Element('input', [
          attr('type', 'checkbox'),
          addIf(disabled, Modifier.disabled),
          mods,
          symbol,
        ]),
        label,
      ],
    );

Element radio({String name, label, mods, Symbol symbol, bool disabled}) =>
    new Element(
      'label',
      [
        clazz('radio'),
        addIf(disabled, Modifier.disabled),
        new Element('input', [
          attr('type', 'radio'),
          attr('name', name),
          mods,
          symbol,
          addIf(disabled, Modifier.disabled),
        ]),
        label,
      ],
    );

Element textarea([content]) =>
    new Element('textarea', [clazz('textarea'), content]);

// TODO: add icons FormField
// TODO: add File
