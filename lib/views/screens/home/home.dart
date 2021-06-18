import 'package:flutter/material.dart';
import 'package:nfts/services/file_provider.dart';
import 'package:nfts/services/uploaded_list_provider.dart';
import 'package:nfts/views/screens/home/layouts/display_image_widget.dart';
import 'package:nfts/views/screens/home/layouts/recent_uploads.dart';
import 'package:nfts/views/screens/home/layouts/select_image_widget.dart';
import 'package:nfts/views/screens/widgets/appbar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fileProvider = context.watch<FileProvider>();
    var uploadedListProvider = context.watch<UploadedListProvider>();

    return Center(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        children: [
          (fileProvider.fileState == FileState.select)
              ? SelectImageWidget()
              : DisplayImageWidget(),
          (uploadedListProvider.uploadedListState != UploadedListState.empty)
              ? RecentUploads()
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
