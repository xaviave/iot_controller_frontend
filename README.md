# GMX IOT CONTROLLER

Flutter app connect via gRPC to a [Django server](https://github.com/xaviave/iot_controller_backend).
The app aim to control every different IOT product connected to the server with a simple interface.

## To-Do

- Andrdoid Widget
- gRPC web (not working on web platform)
- Design app

## Commands

### Run

    flutter pub get
    flutter run

### Build

    flutter build apk

### Installation

Run theses commands:

    sudo apt install protobuf-compiler
    flutter pub get && flutter pub upgrade
    dart pub global activate protoc_plugin
    export PATH="$PATH:$HOME/.pub-cache/bin"

Generate gPRC dart files:

    protoc -I=protos/ protos/backend.proto --dart_out=grpc:lib/protos --experimental_allow_proto3_optional

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

To support additional languages, please visit the tutorial on
[Internationalizing Flutter
apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)
