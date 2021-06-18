import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

enum FileState {
  select,
  display,
  uploading,
}

class FileProvider extends ChangeNotifier {
  FileState fileState = FileState.select;

  File _selectedFile = File('');
  File get selectedFile => _selectedFile;

  Future selectFileToUpload() async {
    try {
      FilePickerResult filePickerResult =
          await FilePicker.platform.pickFiles(type: FileType.image);

      if (filePickerResult != null) {
        _selectedFile = File('');
        _selectedFile = File(filePickerResult.files.single.path);
        fileState = FileState.display;
        notifyListeners();
      } else {
        throw ('User cancelled selection');
      }
    } catch (e) {
      throw (e);
    }
  }

  clear() {
    _selectedFile = File('');
    fileState = FileState.select;
    notifyListeners();
  }
}
