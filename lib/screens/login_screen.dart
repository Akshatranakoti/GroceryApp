import 'package:grocery_app/helper/sizedbox_helper.dart';
import 'package:grocery_app/widgets/custom_button.dart';
import 'package:grocery_app/widgets/custom_text_field.dart';

import '../all_imports.dart';

class LoginScreen extends StatelessWidget {
  static String get routeName => "loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppDimen.px20),
        child: Column(
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
            CustomButton(onTap: () {}, title: AppStrings.login)
          ],
        ),
      ),
    );
  }
}
