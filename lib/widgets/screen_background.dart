import 'package:grocery_app/all_imports.dart';

class ScreenBackground extends StatelessWidget {
  final List<Widget> children;
  const ScreenBackground({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteFEFFFFE,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: AppDimen.px20,
                right: AppDimen.px20,
                top: MediaQuery.of(context).padding.top),
            child: Column(children: children),
          ),
          Assets.poster.image()
        ],
      ),
    );
  }
}
