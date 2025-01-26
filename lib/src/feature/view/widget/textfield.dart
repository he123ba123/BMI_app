import 'package:app_two/src/feature/view/screen/home.dart';
import 'package:app_two/src/feature/view/widget/border.dart';
import 'package:flutter/material.dart';

class textFormField extends StatelessWidget {
  const textFormField(
      {super.key,
      required this.label,
      required this.hint,
      required this.controller,
      required this.prefix,
      required this.sufix,
      required this.textInputType});
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget prefix;
  final Widget sufix;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value!.isEmpty) {
            return "don't put the form empty ";
          }
          return null;
        },
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          prefixIcon: prefix,
          suffixIcon: InkWell(
            onTap: () {
              name.clear();
            },
            child: const Icon(Icons.remove),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          enabledBorder: border(color: Colors.blue, radius: 60),
          focusedBorder: border(color: Colors.pink, radius: 60),
        ));
  }
}



class screenOne extends StatelessWidget {
  const screenOne(
      {super.key,
      required this.label,
      required this.hint,
      required this.controller,
      required this.prefix,
      required this.sufix,
      required this.textInputType});
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget prefix;
  final Widget sufix;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value!.isEmpty) {
            return "don't put the form empty ";
          }
          return null;
        },
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          prefixIcon: prefix,
          suffixIcon: InkWell(
            onTap: () {
              name.clear();
            },
            child: const Icon(Icons.remove),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          enabledBorder: border(color: Colors.blue, radius: 60),
          focusedBorder: border(color: Colors.pink, radius: 60),
        ));
  }
}


