import '../all_imports.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomButton({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppDimen.px10),
      splashColor: AppColors.whiteFEFFFFE,
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .075,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimen.px10),
            color: AppColors.redFE2E44),
        child: Center(child: Text(title, style: AppTextStyle.white_20Bold)),
      ),
    );
  }
}
