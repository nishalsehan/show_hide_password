
import 'package:flutter/material.dart';

class ShowHidePasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final InputDecoration? decoration;
  final String? hintText;
  final TextStyle? fontStyle;
  final Color? textColor;
  final Color? hintColor;
  final double iconSize;
  final IconData visibleOnIcon;
  final IconData visibleOffIcon;
  const ShowHidePasswordTextField({super.key, required this.controller, this.decoration, this.hintText, this.fontStyle, this.textColor, this.hintColor, this.iconSize = 20, this.visibleOnIcon = Icons.visibility_outlined, this.visibleOffIcon = Icons.visibility_off_outlined});

  @override
  State<StatefulWidget> createState() => ShowHidePasswordTextFieldState();
}

class ShowHidePasswordTextFieldState extends State<ShowHidePasswordTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !_passwordVisible,
      controller: widget.controller,
      showCursor: false,
      style:  (widget.fontStyle??const TextStyle()).copyWith(
        color: widget.textColor??Colors.black87,
      ),
      decoration: (widget.decoration??const InputDecoration()).copyWith(
        hintText: widget.hintText??'Enter the Password',
        hintStyle:(widget.fontStyle??const TextStyle()).copyWith(
          color: widget.hintColor??Colors.black38,
        ),
        suffixIcon: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            padding: EdgeInsets.only(left: widget.iconSize, right: widget.iconSize),
            child: Icon(
                _passwordVisible ? widget.visibleOnIcon : widget.visibleOffIcon,
                color: Colors.black26,
                size: widget.iconSize
            ),
          ),
          onTap: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}