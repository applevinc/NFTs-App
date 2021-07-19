import 'package:flutter/material.dart';

enum IsConnected {
  connected,
  notConnected,
}

class WalletProvider extends ChangeNotifier {
  IsConnected isConnected = IsConnected.notConnected;
}
