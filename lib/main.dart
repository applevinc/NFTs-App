import 'package:flutter/material.dart';
import 'package:nfts/services/file_provider.dart';
import 'package:nfts/services/uploaded_list_provider.dart';
import 'package:nfts/services/wallet.dart';
import 'package:nfts/views/screens/home/home.dart';
import 'package:nfts/views/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => FileProvider()),
          ChangeNotifierProvider(create: (context) => UploadedListProvider()),
          ChangeNotifierProvider(create: (context) => WalletProvider()),
        ],
        child: MaterialApp(
          title: 'NFTs Files Application',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData,
          home: Home(),
        ),
      );
    });
  }
}
