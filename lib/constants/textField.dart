import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class TextFieldApp {
  Widget textFieldLogin(String labelText, bool obscureText,TextEditingController controller) {
    return SizedBox(
      width: 400,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: GradientColors.leCocktail,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated),
            borderRadius: BorderRadius.circular(25)),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(
              color: Color.fromARGB(255, 214, 209, 209),
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            filled: true,
            
            labelText: labelText,
            labelStyle: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 214, 209, 209),
                fontWeight: FontWeight.w400),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                )),
          ),
        ),
      ),
    );
  }
}
