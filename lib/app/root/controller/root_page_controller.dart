import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/root/data/transfer_info_data.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  final galleryList = [
    R.image.youngwoojiyeon1,
    R.image.youngwoojiyeon3,
    R.image.youngwoojiyeon2,
    R.image.youngwoojiyeon5,
    R.image.youngwoojiyeon4,
    R.image.youngwoojiyeon6,
    R.image.youngwoojiyeon7,
    R.image.youngwoojiyeon8,
    R.image.youngwoojiyeon9,
    // R.image.youngwoojiyeon10,
    // R.image.youngwoojiyeon11,
    // R.image.youngwoojiyeon12,
    // R.image.youngwoojiyeon13,
    // R.image.youngwoojiyeon14,
    // R.image.youngwoojiyeon15,
    // R.image.youngwoojiyeon16,
    // R.image.youngwoojiyeon17,
    // R.image.youngwoojiyeon18,
    // R.image.youngwoojiyeon19,
    // R.image.youngwoojiyeon20,
  ];

  final youngWooTransferData = FamilyTransferInfoData(
      '신랑측 마음 전하는 곳',
      TransferInfoData('신영우', '카카오뱅크', '3333-14-3664702'),
      TransferInfoData('신종식', '하나은행', '111-1111-1111'),
      TransferInfoData('손희송', '신한은행', '110-034-183346'),
  );

  final jiYeonTransferData = FamilyTransferInfoData(
    '신부측 마음 전하는 곳',
    TransferInfoData('최지연', '카카오뱅크', '3333-02-1676984'),
    TransferInfoData('최성식', '하나은행', '111-1111-1111'),
    TransferInfoData('허인숙', '하나은행', '111-1111-1111'),
  );
}
