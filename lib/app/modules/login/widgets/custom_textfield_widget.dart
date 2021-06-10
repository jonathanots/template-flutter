import 'package:flutter/material.dart';

class CustomTextfieldWidget extends StatelessWidget {
  final String title;
  final Function(String value) onChange;
  final bool obscure;
  final TextEditingController editingController;
  const CustomTextfieldWidget(
      {Key? key,
      this.title = "CustomTextfieldWidget",
      required this.onChange,
      required this.editingController,
      this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: TextFormField(
        controller: editingController,
        onChanged: onChange,
        obscureText: obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
