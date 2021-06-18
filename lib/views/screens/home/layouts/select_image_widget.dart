import 'package:flutter/material.dart';
import 'package:nfts/services/file_provider.dart';
import 'package:nfts/views/assets/icons.dart';
import 'package:nfts/views/theme/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class SelectImageWidget extends StatelessWidget {
  const SelectImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fileProvider = context.watch<FileProvider>();

    return InkWell(
      onTap: () async {
        // Upload a file from device
        await fileProvider.selectFileToUpload().catchError((error) => print(error));
      },
      child: Container(
        width: 100.0.w,
        height: 200,
        decoration: BoxDecoration(
          color: AppColors.royalBlue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(AppIcons.upload),
              color: Colors.white,
              size: 40,
            ),
            SizedBox(height: 10),
            Text(
              'Upload a file here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
