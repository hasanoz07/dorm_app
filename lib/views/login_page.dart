import 'package:dorm_app/constants/colors.dart';
import 'package:dorm_app/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
              vertical: Dimens.verticalDimens,
            ),
            child: Column(
              children: [
                Container(
                  width: 10 * Dimens.horizontalDimens,
                  height: 10 * Dimens.horizontalDimens,
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
                TextField(),
                TextField(),
                ElevatedButton(onPressed: () {}, child: Text("data"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
