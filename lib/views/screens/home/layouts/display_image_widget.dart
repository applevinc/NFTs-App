import 'package:flutter/material.dart';
import 'package:nfts/services/file_provider.dart';
import 'package:nfts/views/screens/widgets/button.dart';
import 'package:nfts/views/theme/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class DisplayImageWidget extends StatelessWidget {
  const DisplayImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fileProvider = context.watch<FileProvider>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.file(
            fileProvider.selectedFile,
            width: 100.0.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10),
        (fileProvider.fileState == FileState.uploading)
            ? CustomButton(
                label: 'Uploading',
                color: AppColors.deepRed,
                onTap: () {
                  // upload to ipfs
                },
              )
            : Row(
                children: [
                  CustomButton(
                    label: 'Upload',
                    color: AppColors.deepRed,
                    onTap: () {
                      //TODO: upload to ipfs
                    },
                  ),
                  SizedBox(width: 10),
                  CustomButton(
                    label: 'Clear',
                    color: Colors.lightBlue,
                    onTap: () {
                      fileProvider.clearFile();
                    },
                  ),
                ],
              ),
      ],
    );
  }
}
