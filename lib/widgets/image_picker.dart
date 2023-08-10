import 'dart:io';

import 'package:grocery_app/all_imports.dart';

class ImagePickerWidget extends StatefulWidget {
  final String errorMessage;
  final Function(File) getProfileImage;
  final File? file;

  const ImagePickerWidget(
      {super.key,
      required this.errorMessage,
      required this.getProfileImage,
      required this.file});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker imagePicker = ImagePicker();
  File? _selectedFile;
  Future _pickImage(ImageSource imageSource) async {
    final file = await imagePicker.pickImage(source: imageSource);
    widget.getProfileImage(File(file!.path));
  }

  _backgroundImage() {
    return widget.file == null
        ? Assets.personLineAvatar.provider()
        : FileImage(widget.file!);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * .075,
          backgroundImage: _backgroundImage(),
          backgroundColor: AppColors.whiteFEFFFFE,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
            if (widget.errorMessage.isNotEmpty)
              Text(
                widget.errorMessage,
                style: AppTextStyle.red_15,
              ),
            SizedBoxHelper.sizedBox10
          ],
        ),
      ],
    );
  }
}
