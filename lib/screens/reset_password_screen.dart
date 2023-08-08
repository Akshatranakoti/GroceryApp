import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/provider/reset_password_provider.dart';
import 'package:grocery_app/widgets/screen_background.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String routeName = "resetPasswordScreen";
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ResetPasswordProvider>(
      builder: (context,provider,child) {
        return ScreenBackground(children: [
            SizedBoxHelper.sizedBox100,
            Assets.appIcon.image(height: MediaQuery.of(context).size.height * 0.25),
            SizedBoxHelper.sizedBox20,
            CustomTextField(
                controller: provider.emailController,
                iconData: Icons.email,
                hintText: AppStrings.email,
                errorMessage: provider.emailError,),
            SizedBoxHelper.sizedBox20,
            CustomButton(onTap: () {}, title: AppStrings.resetPassword),
          ]);
      }
    );
    
  }
}
