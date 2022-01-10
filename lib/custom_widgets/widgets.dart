import 'package:flutter/material.dart';
import 'package:flutter_task_2_2/resources/colors.dart';

class UserScreenInkWell extends StatelessWidget {
  const UserScreenInkWell({required this.label, Key? key}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        label,
        style: const TextStyle(color: blueColor, fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: () {},
    );
  }
}

class UserScreenTextField extends StatelessWidget {
  const UserScreenTextField({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: greyColor,
        labelText: label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(36)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
