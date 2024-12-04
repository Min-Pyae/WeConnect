import 'package:flutter/material.dart';

class WcTextField extends StatelessWidget {

  final TextEditingController controller;
  final String hintText;
  final bool obsecureText;

  const WcTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(

        // Border when unselected
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary
          ),
          borderRadius: BorderRadius.circular(12)
        ),

        // Border when unselected
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary
          ),
          borderRadius: BorderRadius.circular(12)
        ),

        fillColor: Theme.of(context).colorScheme.secondary,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary
        )
        
      ),
    );
  }
}