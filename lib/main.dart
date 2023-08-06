import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/screens/reset_password_screen.dart';
import 'package:grocery_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: SnackBarHelper.scaffoldMessengerKey,
      title: AppStrings.groceryApplication,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => const LoginScreen(),
        SignUpScreen.routeName: (_) => const SignUpScreen(),
        ResetPasswordScreen.routeName: (_) => const ResetPasswordScreen(),
      },
    );
  }
}
