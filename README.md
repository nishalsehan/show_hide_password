# Hide/Show Password

A Flutter plugin that provides a builder to easily implement a hide/show password functionality in your Flutter application. This plugin allows you to toggle the visibility of a password field with a simple boolean status. Additionally, it includes q Flutter Widget that provides a custom textfield widget with a built-in password toggle feature and customization options.

## Platform Support

| **Android** | **iOS** | **Web** | **MacOS** | **Linux** | **Windows** |
|:-----------:|:-------:|:-------:|:---------:|:---------:|:-----------:|
|   &#9989;   | &#9989; | &#9989; |  &#9989;  |  &#9989;  |   &#9989;   |

## Features

- Toggle between hiding and showing the password in a text field.
- You can customize the icon and size of the password visibility toggle.
- Supports custom `TextField` and `TextFormFields`.
- Provides a custom `TextField` with a built-in show/hide toggle.
- Can customize the appearance of the textfield and password toggle to match your app's design.

## Installation

To use this plugin, add `show_hide_password` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  show_hide_password: ^0.0.1
```

Run `flutter pub` get to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:show_hide_password/show_hide_password.dart';
```
<br/>

### ShowHidePassword
Use the `ShowHidePassword` widget in your widget tree:

```dart
ShowHidePassword(
    passwordField: (bool hidePassword){
      return  TextField(
        obscureText: hidePassword, ///use the hidePassword status on obscureText to toggle the visibility
      );
    }
)
```

You can customize the toogle and provide initial toggle boolean state. 

| Property              | Type                      | Description                                               |
|-----------------------|---------------------------|-----------------------------------------------------------|
| iconSize              | double                    | Size of the toggle icon                                   |  
| hidePassword          | bool                      | Inital boolean state of the toggle                        |
| visibleOnIcon         | IconData                  | An icon to display as the toggle when visibility ON       |
| visibleOffIcon        | IconData                  | An icon to display as the toggle when visibility OFF      |

<br/>

### ShowHidePasswordTextField
Use the `ShowHidePasswordTextField` widget in your widget tree:


```dart
TextEditingController controller = TextEditingController();
```

```dart
ShowHidePasswordTextField(
  controller: controller,
)
```

You can customize the toogle and provide initial toggle boolean state. 

| Property              | Type                      | Description                                               |
|-----------------------|---------------------------|-----------------------------------------------------------|
| controller            | TextEditingController     | TextEditing Controller used to control text               |  
| hintText              | String                    | The hint text to display inside the text input field.     |
| visibleOnIcon         | IconData                  | An icon to display as the toggle when visibility ON       |
| visibleOffIcon        | IconData                  | An icon to display as the toggle when visibility OFF      |
