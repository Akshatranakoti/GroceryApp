import 'package:grocery_app/all_imports.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String routeName = "resetPasswordScreen";
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBoxHelper.sizedBox100,
          Assets.appIcon
              .image(height: MediaQuery.of(context).size.height * 0.25),
          SizedBoxHelper.sizedBox20,
          CustomTextField(
              controller: TextEditingController(),
              iconData: Icons.email,
              hintText: AppStrings.email),
          SizedBoxHelper.sizedBox20,
          CustomButton(onTap: () {}, title: AppStrings.resetPassword),
        ]),
      ),
    );
  }
}
