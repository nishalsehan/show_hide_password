# show_hide_password

A Flutter plugin that provides a builder to easily implement a hide/show password functionality in your Flutter application. This plugin allows you to toggle the visibility of a password field with a simple boolean status. Additionally, it includes a Flutter Widget that provides a custom textfield widget with a built-in password toggle feature and customization options.

![demo](https://github.com/nishalsehan/show_hide_password/assets/44578204/1df70499-f43c-4ee6-b279-d21e3c97b31b)

## Platform Support

| **Android** | **iOS** | **Web** | **MacOS** | **Linux** | **Windows** |
|:-----------:|:-------:|:-------:|:---------:|:---------:|:-----------:|
|   &#9989;   | &#9989; | &#9989; |  &#9989;  |  &#9989;  |   &#9989;   |

## Features

- Toggle between hiding and showing the password in a text field.
- You can customize the icon and size of the password visibility toggle.
- Supports for custom `TextField`, `TextFormField` or custom widgets.
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

You can customize the toogle and provide initial toggle boolean state. Here's an example of how to customize the toggle appearance:

```dart
ShowHidePassword(
  hidePassword: false,
  passwordField: (hidePassword){
      return  TextField(
        keyboardType: TextInputType.text,
        controller: controller,
        obscureText: hidePassword, ///use the hidePassword status on obscureText to toggle the visibility
        showCursor: false,
        decoration: InputDecoration(
          isDense: true,
          hintText: 'Enter the password',
          hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Colors.black38,
            fontWeight: FontWeight.w500,
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
          counterText: "",
          contentPadding:EdgeInsets.symmetric(vertical: size.height*0.018,horizontal: size.width*0.04),
        ),
        style:  Theme.of(context).textTheme.labelMedium!.copyWith(
          color: Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      );
  },
  iconSize: 18,
  visibleOffIcon: Iconsax.eye_slash,
  visibleOnIcon: Iconsax.eye,
)
```

![show_hide_password_screenshot_03](https://github.com/nishalsehan/show_hide_password/assets/44578204/e0f95d4b-1b46-4f92-b869-aa24c58cb743)

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

![show_hide_password_screenshot_01](https://github.com/nishalsehan/show_hide_password/assets/44578204/277f0406-ddeb-4f1a-bbd7-96144ccad2ed)

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

![show_hide_password_screenshot_02](https://github.com/nishalsehan/show_hide_password/assets/44578204/a2107808-6228-44ec-95e8-fe2f1ccfa8ba)


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
