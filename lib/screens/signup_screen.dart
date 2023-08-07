import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/widgets/image_picker.dart';
import 'package:grocery_app/widgets/screen_background.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "signUpScreen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        children: [
          ImagePickerWidget(),
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.person,
              hintText: AppStrings.userName),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.email,
              hintText: AppStrings.email),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.password,
              hintText: AppStrings.password),
          SizedBoxHelper.sizedBox10,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.password,
              hintText: AppStrings.confirmPassword),
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
      ),
    );
  }
}
