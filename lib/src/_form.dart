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
      div([
        clazz('field-label', 'is-normal'),
        Element('label', [clazz('label'), label]),
      ]),
      div([
        clazz('field-body'),
        div([
          clazz('field'),
          Element('p', [clazz('control'), input.append(color)]),
        ]),
      ]),
      if (help != null) () => Element('p', [clazz('help'), color, help]),
    ]);

Element input(String type, [mods]) =>
    Element('input', [clazz('input'), attr('type', type), mods]);

Element select({mods, options}) =>
    div([clazz('select'), mods, Element('select', options)]);

Element option({String value, bool selected, content}) => Element('option', [
      attr('value', value),
      if (selected ?? false) () => attr('selected', 'selected'),
      content,
    ]);

Element checkbox({label, mods, Symbol symbol, bool disabled}) => Element(
      'label',
      [
        clazz('checkbox'),
        if (disabled ?? false) Modifier.disabled,
        Element('input', [
          attr('type', 'checkbox'),
          if (disabled ?? false) Modifier.disabled,
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
        if (disabled ?? false) Modifier.disabled,
        Element('input', [
          attr('type', 'radio'),
          attr('name', name),
          mods,
          symbol,
          if (disabled ?? false) Modifier.disabled,
        ]),
        label,
      ],
    );

Element textarea([content]) =>
    Element('textarea', [clazz('textarea'), content]);

// TODO: add icons FormField
// TODO: add File
