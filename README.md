# flavor_cicd

A new Flutter project.

---

## Flutter native splash command
#### First create files
- flutter_native_splash-prod.yaml
- flutter_native_splash-staging.yaml
- flutter_native_splash-dev.yaml
#### Example
```
flutter_native_splash:
  color: "#ffffff"
  image: assets/logo-development.png
  branding: assets/branding-development.png
  color_dark: "#121212"
  image_dark: assets/logo-development.png
  branding_dark: assets/branding-development.png

  android_12:
    image: assets/logo-development.png
    icon_background_color: "#ffffff"
    image_dark: assets/logo-development.png
    icon_background_color_dark: "#121212"

  web: false
```
#### Run command
```
- dart run flutter_native_splash:create --flavor prod
- dart run flutter_native_splash:create --flavor staging
- dart run flutter_native_splash:create --flavor dev
```
---

## Flutter launcher icon command
#### First create files
- flutter_launcher_icons-prod.yaml
- flutter_launcher_icons-staging.yaml
- flutter_launcher_icons-dev.yaml
#### Example
```
# true -> Override the default existing Flutter launcher icon for the platform specified
flutter_launcher_icons:
  android: true
  ios: true
  remove_alpha_ios: true

  image_path: assets/icons/dev.png
```
```
dev_dependencies:
  flutter_launcher_icons: "^0.14.4"

flutter_launcher_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
  min_sdk_android: 21 # android min sdk min:16, default 21
  web:
    generate: true
    image_path: "path/to/image.png"
    background_color: "#hexcode"
    theme_color: "#hexcode"
  windows:
    generate: true
    image_path: "path/to/image.png"
    icon_size: 48 # min:48, max:256, default: 48
  macos:
    generate: true
    image_path: "path/to/image.png"
```
#### Run command
```
flutter pub get
dart run flutter_launcher_icons
```
---