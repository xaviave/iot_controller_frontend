# GMX IOT CONTROLLER

Flutter app connect via gRPC to a [Django server](https://github.com/xaviave/iot_controller_backend).
The app aim to control every different IOT product connected to the server with a simple interface.

## To-Do

- Android Widget
- gRPC web ok on branch but needs a envoy proxy
- identification | firebase or something
- Create anything from app
- gRPC stream data

### Functionalities

auto on-off:
- wifi detector
- time schedule
- outside brightness (sensor or sunset time)

themes by rooms and on-off button for a room

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

When creating new gesture from python, we always recompile the proto file to match the dart language. 
Dart protoc doesn't handle plugins / over sources like google one files.
They are find [here](https://github.com/grpc/grpc-dart/tree/master/example/googleapis/lib/src/generated/google/protobuf) and need to be added to the right path following the `.pb.dart` import path.

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
