import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyntra_learn/core/resources/app_colors.dart';
import 'package:vyntra_learn/ui/widgets/button/custom_button.dart';
import 'package:vyntra_learn/ui/widgets/inputs/auth_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sign In',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 19.2,
                  ),
                ),
              ),
              Text(
                'Log in to discover great deals,connect with campus\nsellers, and shop smarter',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(height: 20),
              AuthTextField(hintText: 'Email'),
              SizedBox(height: 20),

              AuthTextField(
                hintText: 'Password',
                suffixIcon: Image.asset(
                  'assets/png/eye 1.png',
                  color: AppColors.textBlack,
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),

                  Text(
                    'Reset now',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomButton(
                text: 'Sign In',
                color: AppColors.textOrange,
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/png/Line 20.png'),
                      color: AppColors.lineColor,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Or Sign In With',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/png/Line 20.png'),
                      color: AppColors.lineColor,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
