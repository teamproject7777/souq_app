import 'package:souq_app/components/text_field_container.dart';
import 'package:souq_app/const/colors.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key, 
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
