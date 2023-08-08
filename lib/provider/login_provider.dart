import 'package:grocery_app/all_imports.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _emailError = "";
 String get emailError => _emailError;

   String _passwordError = "";
    String get passwordError => _passwordError;




}
