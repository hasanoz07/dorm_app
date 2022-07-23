import 'package:flutter/material.dart';

import 'colors.dart';

class LoginTextButton{
   Widget loginTextButton(Function()? onpressed) {
    return TextButton(
                  onPressed: onpressed,
                  style: ButtonStyle(backgroundColor:  MaterialStateProperty.all(AppColors.loginBg1),),
                  child: Text(
                    "Giriş Yapmakta Sorun Yaşıyorum",
                    style: TextStyle(
                      
                      color: Colors.black,
                      fontSize: 18,
                      
                    ),
                    
                  ));
  }

}