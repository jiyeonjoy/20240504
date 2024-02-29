class FamilyTransferInfoData {
  final String title;
  final TransferInfoData child;
  final TransferInfoData father;
  final TransferInfoData mother;

  FamilyTransferInfoData(this.title, this.child, this.father, this.mother);
}

class TransferInfoData {
  final String name;
  final String bankName;
  final String account;

  TransferInfoData(this.name, this.bankName, this.account);
}
