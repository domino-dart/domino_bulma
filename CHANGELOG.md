# Changelog

## 0.4.2

- Enabled Dart2.

## 0.4.0

- Upgrade to `domino` `0.4.0`

## 0.3.4-dev

- Support `&hellip;` inside pagination.

## 0.3.3

- Implement component: `modal`, `pagination`, `tabs`.
- Implement element: `image`.
- Text color and image dimension modifiers.

## 0.3.2

- Fix `clazz` methods.
- Fix `input` class on `input()`.
- Implement form elements: `select`, `option`, `checkbox`, `radio`, `textarea`.
- Implement elements: `tag`, `title`.

## 0.3.1

**Breaking Changes**:

- `FormField` and `Input` are no longer `Component`s, rather they became build methods.

## 0.3.0

**Breaking Changes**:

- Updated to `domino` 0.3.0.
- Removed `Mods`, using `Modifier` instead which exposes `Setter`s.

## 0.2.0

**Breaking Changes:**

- Removed `BulmaComponent`, clients should use `Mods` to add arbitrary `bulma` classes.
- Removed most `Component` classes, using methods instead in simple cases.
- Simplified parameters (removed `is` prefix).
- Removed `*Mod` enums, using String class values instead.

*New features:*

- Implemented `column` options.
- Implemented layouts: `level`, `media`, `hero`, `section`, and `footer`.
- Implemented elements: `notification`, and `progress`.
- Implemented components: `breadcrumb`, partial `card`, `message`.

## 0.1.0

- `Input.value` to provide the current value in the `<input>` field.
- Upgraded to `domino` `0.2.0`, with **breaking changes**: `content` is used instead of `text` or `children`.

## 0.0.1

- Initial version.
