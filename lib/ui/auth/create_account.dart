import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vyntra_learn/core/resources/app_colors.dart';
import 'package:vyntra_learn/ui/widgets/inputs/auth_text_field.dart';
import 'package:vyntra_learn/ui/widgets/button/custom_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 19.2,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Register to discover campus vendors and shop\nquality products from anywhere, anytime',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: AppColors.smallText,
                  ),
                ),
                SizedBox(height: 30),
                AuthTextField(
                  hintText: 'Full Name',
                  inputType: TextInputType.name,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  hintText: 'Email Address',
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  hintText: 'Phone Number',
                  inputType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  hintText: 'Password',
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  hintText: 'Confirm Password',
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 20),
                AuthTextField(
                  hintText: 'University of ilorin, Kwara State',
                  suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.black),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Expanded(
                      child: Text(
                        'By Creating account, you are accepting terms &\nconditions',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: AppColors.smallText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                CustomButton(text: 'Create Account', onPressed: () {}),
                SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: AppColors.smallText,
                      ),
                      children: [
                        const TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          text: 'Sign in',
                          style: GoogleFonts.montserrat(
                            color: AppColors.textOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
