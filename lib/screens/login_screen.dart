import 'package:grocery_app/screens/reset_password_screen.dart';
import 'package:grocery_app/widgets/screen_background.dart';

import '../all_imports.dart';

class LoginScreen extends StatelessWidget {
  static String get routeName => "loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        children: [
          Assets.appIcon
              .image(height: MediaQuery.of(context).size.height * 0.25),
          SizedBoxHelper.sizedBox20,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.email,
              hintText: AppStrings.email),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.password,
              hintText: AppStrings.password),
          SizedBoxHelper.sizedBox20,
          CustomButton(onTap: () {}, title: AppStrings.login),
          SizedBoxHelper.sizedBox10,
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
            },
            child: RichText(
                text: TextSpan(
                    text: "${AppStrings.createAnAccount},",
                    style: AppTextStyle.grey696969_18,
                    children: [
                  TextSpan(
                      text: AppStrings.signUp,
                      style: AppTextStyle.blue_20Bold)
                ])),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, ResetPasswordScreen.routeName);
              },
              child: Text(
                AppStrings.resetPassword,
                style: AppTextStyle.grey696969_18,
              ))
        ],
      ),
    );
  }
}
