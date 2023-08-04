import 'package:grocery_app/all_imports.dart';


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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String tag = "HomePage";
    Logger.message(tag, "value");
    Logger.sucess(tag, "value");
    Logger.error(tag, "value");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue390191,
        bottomOpacity: AppDimen.px100,
        title: Text(
          AppStrings.groceryApplication,
          style: AppTextStyle.black20Bold,
        ),
      ),
      body: Center(
          child: MaterialButton(
        color: AppColors.blue390191,
        onPressed: () {
          SnackBarHelper.sucessSnackBar("sucess");
        },
        child: const Text("sucess"),
      )),
    );
  }
}
