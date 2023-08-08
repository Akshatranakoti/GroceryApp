import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/provider/signup_provider.dart';
import 'package:grocery_app/widgets/image_picker.dart';
import 'package:grocery_app/widgets/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "signUpScreen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpProvider>(
      builder: (context,provider,child) {
        return ScreenBackground(
          children: [
            ImagePickerWidget(),
            CustomTextField(
                controller: provider.usernameController,
                iconData: Icons.person,
                hintText: AppStrings.userName,
                errorMessage: provider.usernameError),
            SizedBoxHelper.sizedBox10,
            CustomTextField(
                controller: provider.emailController,
                iconData: Icons.email,
                hintText: AppStrings.email,
                errorMessage: provider.emailError,),
            SizedBoxHelper.sizedBox10,
            CustomTextField(
                controller: provider.passwordController,
                iconData: Icons.password,
                hintText: AppStrings.password,
                errorMessage: provider.passwordError,),
            SizedBoxHelper.sizedBox10,
            CustomTextField(
                controller: provider.confirmPasswordController,
                iconData: Icons.password,
                hintText: AppStrings.confirmPassword,
                errorMessage: provider.confirmPasswordError,),
            SizedBoxHelper.sizedBox20,
            CustomButton(onTap: () {}, title: AppStrings.login),
            SizedBoxHelper.sizedBox10,
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
              child: RichText(
                  text: TextSpan(
                      text: "${AppStrings.createAnAccount},",
                      style: AppTextStyle.grey696969_18,
                      children: [
                    TextSpan(
                        text: AppStrings.login, style: AppTextStyle.blue_20Bold)
                  ])),
            ),
          ],
        );
      }
    );
  }
}
