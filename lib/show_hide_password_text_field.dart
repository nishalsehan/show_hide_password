import 'package:flutter/material.dart';

class ShowHidePasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  /// allowed user to customize the appearance of the TextField
  final InputDecoration? decoration;
  final String? hintText;
  final TextStyle? fontStyle;
  final Color? textColor;
  final Color? hintColor;
  final double iconSize;
  final IconData visibleOnIcon;
  final IconData visibleOffIcon;
  const ShowHidePasswordTextField(
      {super.key,
      required this.controller,
      this.decoration,
      this.hintText,
      this.fontStyle,
      this.textColor,
      this.hintColor,
      this.iconSize = 20,
      this.visibleOnIcon = Icons.visibility_outlined,
      this.visibleOffIcon = Icons.visibility_off_outlined});

  @override
  State<StatefulWidget> createState() => ShowHidePasswordTextFieldState();
}

class ShowHidePasswordTextFieldState extends State<ShowHidePasswordTextField> {
  bool _passwordVisible = false;

  /// default visibility assigned to false (password is not visible at the beginning)

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !_passwordVisible,

      /// used visibility status to show and hide the text
      controller: widget.controller,
      style: (widget.fontStyle ?? const TextStyle()).copyWith(
        color: widget.textColor ?? Colors.black87,

        /// used Colors.black87 as the text color if user not assigned a text color.
      ),
      decoration: (widget.decoration ?? const InputDecoration()).copyWith(
        hintText: widget.hintText ?? 'Enter the Password',

        /// used a default hint
        hintStyle: (widget.fontStyle ?? const TextStyle()).copyWith(
          color: widget.hintColor ?? Colors.black38,
        ),

        /// displayed the toggle as suffix on the TextField
        suffixIcon: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            padding:
                EdgeInsets.only(left: widget.iconSize, right: widget.iconSize),
            child: Icon(
                _passwordVisible ? widget.visibleOnIcon : widget.visibleOffIcon,

                /// changed the icon on toggle change
                color: Colors.black26,
                size: widget.iconSize),
          ),
          onTap: () {
            /// change the visibility on click event
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }
}
