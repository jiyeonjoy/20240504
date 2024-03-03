import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/root/data/transfer_info_data.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  final galleryList = [
    R.image.youngwoojiyeon1,
    R.image.youngwoojiyeon2,
    R.image.youngwoojiyeon3,
    R.image.youngwoojiyeon4,
    R.image.youngwoojiyeon5,
    R.image.youngwoojiyeon6,
    R.image.youngwoojiyeon7,
    R.image.youngwoojiyeon8,
    R.image.youngwoojiyeon9,
    R.image.youngwoojiyeon10,
    R.image.youngwoojiyeon11,
    R.image.youngwoojiyeon12,
    R.image.youngwoojiyeon13,
    R.image.youngwoojiyeon14,
    R.image.youngwoojiyeon15,
  ];

  final youngWooTransferData = FamilyTransferInfoData(
      '신랑 측 마음 전하는 곳',
      TransferInfoData('신영우', '카카오뱅크', '3333-14-3664702'),
      TransferInfoData('신종식', '신한은행', '100-022-461414'),
      TransferInfoData('손희송', '신한은행', '110-034-183346'),
  );

  final jiYeonTransferData = FamilyTransferInfoData(
    '신부 측 마음 전하는 곳',
    TransferInfoData('최지연', '카카오뱅크', '3333-02-1676984'),
    TransferInfoData('최성식', '농협', '665-02-064498'),
    TransferInfoData('허인숙', '농협', '631011-52-063537'),
  );
}
