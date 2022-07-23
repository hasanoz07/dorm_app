import 'package:dorm_app/constants/colors.dart';
import 'package:dorm_app/constants/dimens.dart';
import 'package:dorm_app/constants/loginButton.dart';
import 'package:dorm_app/constants/loginTextButton.dart';
import 'package:dorm_app/constants/textField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextFieldApp textFieldApp = TextFieldApp();
  LoginButton button = LoginButton();
  LoginTextButton textButton = LoginTextButton();
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.loginBg1,
                AppColors.loginBg2,
                AppColors.loginBg3
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.horizontalDimens,
                vertical: Dimens.verticalDimens+50,
              ),
              child: Column(
                children: [
                  Container(
                    width: Dimens.horizontalDimens * 10,
                    height: Dimens.horizontalDimens * 10,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/login_page_photo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text("Giriş Yap",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 2 * Dimens.horizontalDimens + 10,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 40,
                  ),
                  textFieldApp.textFieldLogin("Kullanıcı Adı", false,_userNameController),
                  SizedBox(
                    height: 15,
                  ),
                  textFieldApp.textFieldLogin("Parola", true,_passwordController),
                  SizedBox(
                    height: 15,
                  ),
                  button.loginButton((){
                    
                  }),
                  SizedBox(
                    height: 15,
                  ),
                  textButton.loginTextButton((){
                    
                      
                    
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 
}
