import 'package:flutter/material.dart';
import 'package:nfts/views/assets/images.dart';
import 'package:nfts/views/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'NFTs',
        style: TextStyle(
          color: AppColors.headlineTextColor,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: () {
              // show connect to wallet.
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.vinc),
              radius: 20,
            ),
          ),
        ),
      ],
    );
  }
}
