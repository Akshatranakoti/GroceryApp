import 'dart:io';

import 'package:grocery_app/all_imports.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker imagePicker = ImagePicker();
  File? _selectedFile;
  Future _pickImage(ImageSource imageSource) async {
    final file = await imagePicker.pickImage(source: ImageSource.gallery);
    _selectedFile = File(file!.path);
    setState(() {});
  }

  _backgroundImage() {
    return _selectedFile == null
        ? Assets.personLineAvatar.provider()
        : FileImage(_selectedFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * .075,
          backgroundImage: _backgroundImage(),
          backgroundColor: AppColors.whiteFEFFFFE,
        ),
        TextButton(
          child: Text(
            AppStrings.addImage,
            style: AppTextStyle.grey696969_18,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (_) {
                  return SizedBox(
                    height: AppDimen.px140,
                    child: Column(children: [
                      ListTile(
                        onTap: () {
                          _pickImage(ImageSource.camera);
                          Navigator.of(context).pop();
                        },
                        title: Text(AppStrings.camera),
                      ),
                      Divider(
                        color: AppColors.black000000,
                      ),
                      ListTile(
                        onTap: () {
                          _pickImage(ImageSource.gallery);
                          Navigator.of(context).pop();
                        },
                        title: Text(AppStrings.gallery),
                      )
                    ]),
                  );
                });
          },
        )
      ],
    );
  }
}
