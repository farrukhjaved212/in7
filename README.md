# IN7 — Flutter install screen

A single-screen Flutter app matching the IN7 promo design: fiery black/red/gold
theme, app icon, star rating, and a button that opens the app's Google Play
listing.

## Add the real app icon

Download the official IN7 icon and save it as `assets/icon.png` in this
project (already declared in `pubspec.yaml`). The screen loads it with
`Image.asset('assets/icon.png')` in `_AppIcon` — no other code changes needed.

## Run it

You'll need the Flutter SDK installed locally (this project wasn't built or
tested in a live environment, since this sandbox has no network access to
pub.dev — double-check `flutter pub get` runs clean on your machine).

```bash
flutter pub get
flutter run
```

## What's inside

- `lib/main.dart` — the whole app: theme, layout, star rating, and the
  install button (uses `url_launcher` to open the Play Store link).
- `pubspec.yaml` — dependencies (`url_launcher` for the install button).

## Notes

- The rating (4.0), review count (14), and download count (1K+) are hard-coded
  from the Play Store listing at the time this was built. Update them in
  `_RatingRow` and the subtitle text in `main.dart` if they change.
- The Play Store URL is set in the `_playStoreUrl` constant near the top of
  `main.dart`.
- The app icon is an original lightning-bolt mark drawn with `CustomPainter`
  — not a copy of any specific brand's logo.
