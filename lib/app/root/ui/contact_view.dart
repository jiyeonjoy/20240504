import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: R.color.color_F9F9FB,
      padding: edgeInsets(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          Row(
            children: [
              _buildMainContactView('신랑에게 연락하기'),
              _buildMainContactView('신부에게 연락하기'),
            ],
          ),
          Row(
            children: [
              _buildSubContactView('신랑', '신종식', '손희송'),
              _buildSubContactView('신부', '최성식', '허인숙'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMainContactView(String title) {
    return Expanded(
      child: Column(
        children: [
          Text(
            title,
            style: textStyleBlack600(25),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.phone),),
              IconButton(onPressed: () {}, icon: const Icon(Icons.mail_outline),)
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildSubContactView(String who, String father, String mother) {
    return Expanded(
      child: Column(
        children: [
          Text(
            '$who 측 혼주',
            style: textStyleBlackLight(20, height: 30/20),
          ),
          const SizedBox(height: 20),
          _buildFamilyContactView('아버지', father),
          _buildFamilyContactView('어머니', mother),
        ],
      ),
    );
  }

  Widget _buildFamilyContactView(String title, String name) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: textStyleBlackLight(15),
            ),
            const SizedBox(width: 8),
            Text(
              name,
              style: textStyleBlack600(20),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.phone),),
            IconButton(onPressed: () {}, icon: const Icon(Icons.mail_outline),)
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
