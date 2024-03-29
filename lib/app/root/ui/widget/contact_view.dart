import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';
import 'package:flutter_20240504/app/root/ui/dialog/contact_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsets(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          R.image.icon_botanical.image(),
          _buildSubView('신종식 · 손희송', '  의  장남  ', '신영우', '010-6399-6406'),
          _buildSubView('최성식 · 허인숙', '  의  차녀  ', '최지연', '010-8929-0209'),
          const SizedBox(height: 25),
          _buildContactButton(),
        ],
      ),
    );
  }

  Widget _buildSubView(String first, String second, String third, String phoneNumber) {
    return Container(
      padding: edgeInsets(top: 10),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: first,
              style: textStyleBold(R.color.black, 23),
              children: <TextSpan>[
                TextSpan(
                    text: second,
                    style: textStyleLight(R.color.color_36393D, 18)),
                TextSpan(text: third),
              ],
            ),
          ),
          Padding(
            padding: edgeInsets(top: 5),
            child: IconButton(
              onPressed: () {
                _makePhoneCall(phoneNumber);
              },
              icon: R.image.icon_phone_round.image(width: 24),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactButton() {
    return SizedBox(
      width: 320,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
          contactDialog();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) => R.color.color_171819),
          shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
        ),
        child: Text(
          '혼주에게 연락하기',
          style: textStyleWhiteMedium(20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
