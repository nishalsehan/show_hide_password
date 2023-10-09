library show_hide_password;

export 'show_hide_password_text_field.dart';
import 'package:flutter/material.dart';

class ShowHidePassword extends StatefulWidget {
  final Widget Function(bool hidePassword) passwordField;
  final double iconSize;
  final bool hidePassword;
  final IconData visibleOnIcon;

  /// can customize the icon that display as the toggle when visibility ON.
  final IconData visibleOffIcon;

  /// can customize the icon that display as the toggle when visibility OFF.
  const ShowHidePassword(
      {super.key,
      required this.passwordField,
      this.iconSize = 20,
      this.visibleOnIcon = Icons.visibility_outlined,
      this.visibleOffIcon = Icons.visibility_off_outlined,
      this.hidePassword = true});

  @override
  State<StatefulWidget> createState() => ShowHidePasswordState();
}

class ShowHidePasswordState extends State<ShowHidePassword> {
  late TextEditingController controller;
  late bool hidePassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// assigned the widget's hidePassword state
    hidePassword = widget.hidePassword;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            alignment: Alignment.bottomCenter,
            child: widget.passwordField(hidePassword)),

        ///used positioned widget tp align toggle to the right
        Positioned(
            right: 0,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(
                    left: widget.iconSize, right: widget.iconSize),
                child: Icon(
                    hidePassword ? widget.visibleOffIcon : widget.visibleOnIcon,
                    color: Colors.black26,
                    size: widget.iconSize),
              ),
              onTap: () {
                /// change the visibility on click event
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
            ))
      ],
    );
  }
}
