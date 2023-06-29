import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController textEditingController;
  final IconData? iconData;
  final String? assetReference;
  final String labelString;
  final bool isObsecure;

  Input(
      {required this.textEditingController,
      this.iconData,
      this.assetReference,
      required this.labelString,
      required this.isObsecure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          labelText: labelString,
          prefixIcon: iconData != null
              ? Icon(iconData)
              : Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    assetReference!,
                    width: 20,
                  ),
                ),
          labelStyle: TextStyle(fontSize: 21, color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: Colors.redAccent))),
      obscureText: isObsecure,
    );
  }
}
