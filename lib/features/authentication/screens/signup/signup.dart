import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/social_buttons.dart';
import 'package:t_store/common/widgets/text_divider.dart';
import 'package:t_store/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:t_store/features/authentication/screens/signup/widget/terms_and_conditions.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title

              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form

              const SignupForm(),

              //check box and terms of use

              const TermsAndConditions(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //create account button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TTexts.createAccount)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Divider

              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //social buttons

              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
