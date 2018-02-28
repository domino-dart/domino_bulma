# Changelog

## 0.3.2-dev

- Fix `clazz` methods.
- Fix `input` class on `input()`.
- Implement form elements: `select`, `option`, `checkbox`, `radio`, `textarea`.

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
