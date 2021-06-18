import 'package:flutter/material.dart';
import 'package:nfts/models/upload.dart';
import 'package:nfts/views/assets/icons.dart';
import 'package:nfts/views/theme/colors.dart';
import 'package:nfts/views/theme/styles.dart';

class RecentUploads extends StatelessWidget {
  const RecentUploads({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        _HeadlineRow(),
        SizedBox(height: 10),
        _ItemsListView(),
      ],
    );
  }
}

class _HeadlineRow extends StatelessWidget {
  const _HeadlineRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recent Uploaded',
          style: kHeadlineTextStyleBold,
        ),
        Text(
          '5 items',
          style: kHeadlineTextStyle,
        )
      ],
    );
  }
}

class _ItemsListView extends StatelessWidget {
  const _ItemsListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: uploads.length,
        itemBuilder: (context, index) {
          return _Item(index: index);
        },
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    var item = uploads[index];

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          item.imgUrl,
          fit: BoxFit.fill,
          height: 70,
          width: 70,
        ),
      ),
      title: Text(
        item.name,
        style: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        item.size,
        style: TextStyle(
          color: AppColors.lightTextColor,
          fontSize: 14,
        ),
      ),
      trailing: InkWell(
        onTap: () {
          // delete nft from ipfs
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ImageIcon(AssetImage(AppIcons.delete)),
        ),
      ),
    );
  }
}
