import 'package:flutter/cupertino.dart';
import 'package:nfts/models/upload.dart';

enum UploadedListState {
  empty,
  filled,
}

class UploadedListProvider extends ChangeNotifier {
  UploadedListState uploadedListState = UploadedListState.empty;

  List<Upload> _items = [];
  List<Upload> get items => _items;

  pushFileToIPFS(){}
}
