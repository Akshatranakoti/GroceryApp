import 'package:grocery_app/all_imports.dart';

class SignUpProvider extends ChangeNotifier{
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  String _emailError = "";
 String get emailError => _emailError;

   String _passwordError = "";
    String get passwordError => _passwordError;
   String _usernameError = "";
    String get usernameError =>_usernameError;
   String _confirmPasswordError = "";
    String get confirmPasswordError => _confirmPasswordError;

}