library show_hide_password;

export 'show_hide_password_text_field.dart';
import 'package:flutter/material.dart';

class ShowHidePassword extends StatefulWidget {
  final Widget Function(bool hidePassword) passwordField;
  final double iconSize;
  final bool hidePassword;
  final IconData visibleOnIcon;
  final IconData visibleOffIcon;
  const ShowHidePassword({super.key, required this.passwordField, this.iconSize = 20, this.visibleOnIcon = Icons.visibility_outlined, this.visibleOffIcon = Icons.visibility_off_outlined, this.hidePassword = true});

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
    hidePassword = widget.hidePassword;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            alignment: Alignment.bottomCenter,
            child: widget.passwordField(hidePassword)
        ),
        Positioned(
            right: 0,
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(left: widget.iconSize, right: widget.iconSize),
                child: Icon(
                    hidePassword ? widget.visibleOffIcon : widget.visibleOnIcon,
                    color: Colors.black26,
                    size: widget.iconSize
                ),
              ),
              onTap: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
            )
        )
      ],
    );
  }
}
