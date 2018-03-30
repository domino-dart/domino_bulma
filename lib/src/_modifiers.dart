import 'package:domino/domino.dart';

// https://bulma.io/documentation/modifiers/syntax/

// TODO: display classes (show, hide) from https://bulma.io/documentation/modifiers/responsive-helpers/
// TODO: typography helpers from https://bulma.io/documentation/modifiers/typography-helpers/

class Modifier {
  static final Setter primary = clazz('is-primary');
  static final Setter link = clazz('is-link');
  static final Setter info = clazz('is-info');
  static final Setter success = clazz('is-success');
  static final Setter warning = clazz('is-warning');
  static final Setter danger = clazz('is-danger');

  static final Setter light = clazz('is-light');
  static final Setter dark = clazz('is-dark');

  static final Setter small = clazz('is-small');
  static final Setter medium = clazz('is-medium');
  static final Setter large = clazz('is-large');

  static final Setter clearfix = clazz('is-clearfix');
  static final Setter pulledLeft = clazz('is-pulled-left');
  static final Setter pulledRight = clazz('is-pulled-right');

  static final Setter outlined = clazz('is-outlined');
  static final Setter loading = clazz('is-loading');
  static final Setter overlay = clazz('is-overlay');
  static final Setter clipped = clazz('is-clipped');
  static final Setter noMargin = clazz('is-marginless');
  static final Setter noPadding = clazz('is-paddingless');
  static final Setter noRadius = clazz('is-radiusless');
  static final Setter noShadow = clazz('is-shadowless');
  static final Setter boxed = clazz('is-boxed');
  static final Setter toggle = clazz('is-toggle');
  static final Setter toggleRounded = clazz('is-toggle-rounded');

  static final Setter unselectable = clazz('is-unselectable');
  static final Setter invisible = clazz('is-invisible');
  static final Setter disabled = attr('disabled', 'disabled');

  static final Setter active = clazz('is-active');
  static final Setter centered = clazz('is-centered');
  static final Setter right = clazz('is-right');
  static final Setter multiLine = clazz('is-multiline');
  static final Setter noGap = clazz('is-gapless');
  static final Setter fluid = clazz('is-fluid');
  static final Setter hasAddons = clazz('has-addons');
  static final Setter spaced = clazz('is-spaced');
  static final Setter fullwidth = clazz('is-fullwidth');
}
