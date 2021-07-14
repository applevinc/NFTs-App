import 'package:flutter/material.dart';
import 'package:nfts/services/wallet.dart';
import 'package:nfts/views/theme/colors.dart';
import 'package:provider/provider.dart';

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
        _Button(),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wallet = context.watch<WalletProvider>();

    return InkWell(
      onTap: () {
        //TODO: connect to wallet
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: (wallet.isConnected == IsConnected.connected)
              ? Colors.green
              : AppColors.deepRed,
          borderRadius: BorderRadius.circular(5),
        ),
        child: (wallet.isConnected == IsConnected.connected)
            ? Text('CONNECTED')
            : Text('CONNECT'),
      ),
    );
  }
}
