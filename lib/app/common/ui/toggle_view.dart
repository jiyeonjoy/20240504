import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/common_snackbar.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/root/data/transfer_info_data.dart';

class ToggleView extends StatefulWidget {
  final FamilyTransferInfoData data;

  const ToggleView(this.data, {super.key});

  @override
  State<ToggleView> createState() => _ToggleViewState();
}

class _ToggleViewState extends State<ToggleView>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  var isOpen = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (isOpen) {
              _controller.reverse();
            } else {
              _controller.forward();
            }
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Container(
            padding: edgeInsets(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: R.color.color_171819,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.data.title,
                    style: textStyleWhiteLight(20),
                  ),
                ),
                if (isOpen) ...[
                  R.image.icon_down.imageSize(size: 20)
                ] else ...[
                  R.image.icon_up.imageSize(size: 20)
                ]
              ],
            ),
          ),
        ),
        SizeTransition(
          sizeFactor: _animation,
          axis: Axis.vertical,
          child: Column(
            children: [
              _buildSubView(widget.data.child),
              _buildSubView(widget.data.father),
              _buildSubView(widget.data.mother, hasSeparator: false),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubView(TransferInfoData data, {bool hasSeparator = true}) {
    return Container(
      margin: edgeInsets(horizontal: 20),
      padding: edgeInsets(vertical: 10),
      decoration: hasSeparator ? BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: R.color.color_DDDDDD))
      ) : null,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: textStyleBlackNormal(16),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.bankName,
                      style: textStyleNormal(R.color.color_36393D, 14),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      data.account,
                      style: textStyleNormal(R.color.color_36393D, 14),
                    ),
                  ],
                ),
              ),
              _buildCopyButton(data.account)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCopyButton(String account) {
    return SizedBox(
      // width: 320,
      // height: 42,
      child: ElevatedButton(
        onPressed: () {
          Clipboard.setData(ClipboardData(text: account));
          CommonSnackBar.show('계좌번호가 복사되었습니다.');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) => R.color.color_171819),
          shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
        ),
        child: Text(
          '복사하기',
          style: textStyleWhiteMedium(12),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
