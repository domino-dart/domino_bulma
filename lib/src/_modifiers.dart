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

  static final Setter textPrimary = clazz('has-text-primary');
  static final Setter textLink = clazz('has-text-link');
  static final Setter textInfo = clazz('has-text-info');
  static final Setter textSuccess = clazz('has-text-success');
  static final Setter textWarning = clazz('has-text-warning');
  static final Setter textDanger = clazz('has-text-danger');

  static final Setter light = clazz('is-light');
  static final Setter dark = clazz('is-dark');

  static final Setter textLight = clazz('has-text-light');
  static final Setter textDark = clazz('has-text-dark');
  static final Setter textBlack = clazz('has-text-black');
  static final Setter textWhite = clazz('has-text-white');
  static final Setter textGrey1 = clazz('has-text-black-bis');
  static final Setter textGrey2 = clazz('has-text-black-ter');
  static final Setter textGrey3 = clazz('has-text-grey-darker');
  static final Setter textGrey4 = clazz('has-text-grey-dark');
  static final Setter textGrey5 = clazz('has-text-grey');
  static final Setter textGrey = textGrey5;
  static final Setter textGrey6 = clazz('has-text-grey-light');
  static final Setter textGrey7 = clazz('has-text-grey-lighter');
  static final Setter textGrey8 = clazz('has-text-white-ter');
  static final Setter textGrey9 = clazz('has-text-white-bis');

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

  static final Setter dim16x16 = clazz('is-16x16');
  static final Setter dim24x24 = clazz('is-24x24');
  static final Setter dim32x32 = clazz('is-32x32');
  static final Setter dim48x48 = clazz('is-48x48');
  static final Setter dim64x64 = clazz('is-64x64');
  static final Setter dim96x96 = clazz('is-96x96');
  static final Setter dim128x128 = clazz('is-128x128');
  static final Setter square = clazz('is-square');
  static final Setter dimSquare = square;
  static final Setter dim1by1 = clazz('is-1by1');
  static final Setter dim4by3 = clazz('is-4by3');
  static final Setter dim3by2 = clazz('is-3by2');
  static final Setter dim16by9 = clazz('is-16by9');
  static final Setter dim2by1 = clazz('is-2by1');
}
