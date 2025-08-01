import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyntra_learn/core/resources/app_colors.dart';
import 'package:vyntra_learn/ui/widgets/button/custom_button.dart';
import 'package:vyntra_learn/ui/widgets/decoratedContainer/container.dart';
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
                'Log in to discover great deals, connect with campus\nsellers, and shop smarter',
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              const SizedBox(height: 20),
              const AuthTextField(hintText: 'Email'),
              const SizedBox(height: 20),
              AuthTextField(
                hintText: 'Password',
                suffixIcon: Image.asset(
                  'assets/png/eye 1.png',
                  color: AppColors.textBlack,
                  width: 24,
                  height: 24,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Reset now',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Sign In',
                color: AppColors.textOrange,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Image(
                      image: const AssetImage('assets/png/Line 20.png'),
                      color: AppColors.lineColor,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Or Sign In With',
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Image(
                      image: const AssetImage('assets/png/Line 20.png'),
                      color: AppColors.lineColor,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    child: SvgPicture.asset(
                      'assets/svg/facebook.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  CustomContainer(
                    child: SvgPicture.asset(
                      'assets/svg/google.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  CustomContainer(
                    child: SvgPicture.asset(
                      'assets/svg/apple.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you new here?',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: AppColors.textgrey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    'Sign Up',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: AppColors.textOrange,
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
