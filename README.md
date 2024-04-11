# rankings_flutter

### Code generation

- Run build runner:
```sh
dart run build_runner build --delete-conflicting-outputs
```

Or watch for file changes with

```sh
dart run build_runner watch --delete-conflicting-outputs
```

- Make use of the **Localicely Intl's plugin**.
  - [Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl)
  - [IntelliJ / Android Studio](https://plugins.jetbrains.com/plugin/13666-flutter-intl)

### How to run

- Create a `env.json` file at the root of your directory.
- Add `OPEN_AI_API_KEY` to the json
```json
{
	"OPEN_AI_API_KEY": "YOUR_API_KEY_HERE"
}
```

- Run Flutter:

```sh
flutter run --dart-define-from-file=env.json
```

Or just use the defined configuration in `launch.json` if using VSCode.

### Features

- [x] Runs on iOS
- [x] Runs on Android
- [x] Uses ChatGPT API
- [x] API Key is not visible in repo
- [x] API Key is not visible in repo
- [x] Business Logic fully tested
- [x] Persistent Settings ThemeMode
- [ ] Creative UX/UI
