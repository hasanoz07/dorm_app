import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class LoginButton{
  
  Widget loginButton(Function()? ontap) {
    return InkWell(
                onTap: ontap,
                child: Container(
                  width: 125,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: GradientColors.sunnyMorning),
                    borderRadius: BorderRadius.circular(25)
              
                  ),
                  child: Center(child: Text("Giriş",style: TextStyle(fontSize:20, color: Colors.blueGrey,fontWeight: FontWeight.bold ),)),
                ),
              );
  }
}