import 'package:nfts/views/assets/images.dart';

class Upload {
  final String name;
  final String size;
  final String imgUrl;

  Upload({
    this.name,
    this.size,
    this.imgUrl,
  });
}

// temp data
List<Upload> uploads = [
  Upload(
    name: 'blue-vase',
    size: '240kb',
    imgUrl: AppImages.vase,
  ),
  Upload(
    name: 'polariod-camera',
    size: '240kb',
    imgUrl: AppImages.camera,
  ),
  Upload(
    name: 'nice-litte-car',
    size: '240kb',
    imgUrl: AppImages.car,
  ),
  Upload(
    name: 'nike-arimax',
    size: '240kb',
    imgUrl: AppImages.nikeShoe,
  ),
  Upload(
    name: 'nike-arimax',
    size: '240kb',
    imgUrl: AppImages.nikeShoe,
  ),
];
