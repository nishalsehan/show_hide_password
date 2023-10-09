# show_hide_password

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
| iconSize              | double                    | Size of the toggle icon. `Default: 20`                    |  
| hidePassword          | bool                      | Inital boolean state of the toggle. `Default: true`       |
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

You can customize the appearance of the textfield and password toggle using various properties. Here's an example of how to customize the textfield's appearance:

```dart
ShowHidePasswordTextField(
  controller: controller,
  fontStyle: const TextStyle(
    fontSize: 14,
  ),
  textColor: Colors.blue,
  hintColor: Colors.lightBlueAccent,
  iconSize: 20,
  visibleOffIcon: Iconsax.eye_slash,
  visibleOnIcon: Iconsax.eye,
  decoration: InputDecoration(
    isDense: true,
    hintText: 'Enter the password',
    hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
      color: Colors.black38,
      fontWeight: FontWeight.w500,
      fontSize: 12
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black12,
          width: 1
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black38,
          width: 1
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
)
```

| Property              | Type                      | Description                                                     |
|-----------------------|---------------------------|-----------------------------------------------------------------|
| controller            | TextEditingController     | TextEditing Controller used to control text.                    |  
| hintText              | String                    | The hint text to display inside the text input field.           |
| decoration            | InputDecoration           | To customize the apprearence of the TextField.                  |
| fontStyle             | TextStyle                 | If non-null, the style to use for the text.                     |
| textColor             | Color                     | Color for the text on TextField. `Default: Colors.black87`      |  
| hintColor             | Color                     | Color for the hint text on TextField. `Default: Colors.black38` |
| iconSize              | double                    | Size of the toggle icon. `Default: 20`                          |
| visibleOnIcon         | IconData                  | An icon to display as the toggle when visibility ON.            |
| visibleOffIcon        | IconData                  | An icon to display as the toggle when visibility OFF.           |

## Example

For a complete example of how to use this plugin, check out the [example](https://github.com/nishalsehan/show_hide_password/tree/main/example) folder in this repository.
</br>

## Issues and Feedback

If you encounter any issues or have suggestions for improvement, please open an issue on our [GitHub repository](https://github.com/nishalsehan/show_hide_password). We welcome your feedback!
</br>

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/nishalsehan/show_hide_password/blob/main/LICENSE) file for details.
