import 'package:flutter/material.dart';

class CustomIputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperTex;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomIputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperTex,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: (value) => formValues[formProperty] = value,
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperTex,
          // counterText: '3 caracteres'
          // prefix: Icon( Icons.verified_user_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
          // focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(color: Colors.green)),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         topRight: Radius.circular(10)))
        ));
  }
}
