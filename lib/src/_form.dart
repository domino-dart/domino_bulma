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
      Element('label', [clazz('label'), label]),
      div([clazz('control'), input.append(color)]),
      addIf(help != null, () => Element('p', [clazz('help'), color, help])),
    ]);

Element input(String type, [mods]) =>
    Element('input', [clazz('input'), attr('type', type), mods]);

Element select({mods, options}) =>
    div([clazz('select'), mods, Element('select', options)]);

Element option({String value, bool selected, content}) => Element('option', [
      attr('value', value),
      addIf(selected, () => attr('selected', 'selected')),
      content,
    ]);

Element checkbox({label, mods, Symbol symbol, bool disabled}) => Element(
      'label',
      [
        clazz('checkbox'),
        addIf(disabled, Modifier.disabled),
        Element('input', [
          attr('type', 'checkbox'),
          addIf(disabled, Modifier.disabled),
          mods,
          symbol,
        ]),
        label,
      ],
    );

Element radio({String name, label, mods, Symbol symbol, bool disabled}) =>
    Element(
      'label',
      [
        clazz('radio'),
        addIf(disabled, Modifier.disabled),
        Element('input', [
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
    Element('textarea', [clazz('textarea'), content]);

// TODO: add icons FormField
// TODO: add File
