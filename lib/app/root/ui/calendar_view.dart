import 'package:flutter/material.dart';
import 'package:flutter_20240504/app/common/config/r.dart';
import 'package:flutter_20240504/app/common/ui/edge_insets.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsets(horizontal: 20, top: 50, bottom: 30),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '오월의\n네번째 날.',
            style: textStyleBold(R.color.color_594E47, 20),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 2,
            color: R.color.color_594E47,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _dayView('일', textColor: R.color.color_D93A2B),
              _dayView('월'),
              _dayView('화'),
              _dayView('수'),
              _dayView('목'),
              _dayView('금'),
              _dayView('토', textColor: R.color.color_F29727),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _dateView(' '),
              _dateView(' '),
              _dateView(' '),
              _dateView('1'),
              _dateView('2'),
              _dateView('3'),
              _dateView('4', isSelect: true),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _dateView('5'),
              _dateView('6'),
              _dateView('7'),
              _dateView('8'),
              _dateView('9'),
              _dateView('10'),
              _dateView('11'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _dateView('12'),
              _dateView('13'),
              _dateView('14'),
              _dateView('15'),
              _dateView('16'),
              _dateView('17'),
              _dateView('18'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _dateView('19'),
              _dateView('20'),
              _dateView('21'),
              _dateView('22'),
              _dateView('23'),
              _dateView('24'),
              _dateView('25'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _dateView('26'),
              _dateView('27'),
              _dateView('28'),
              _dateView('29'),
              _dateView('30'),
              _dateView('31'),
              _dateView(' '),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 2,
            color: R.color.color_594E47,
          ),
          const SizedBox(height: 20),
        ],
      )
    );
  }

  Widget _dayView(String day, {Color? textColor}) {
    return Expanded(
      child: Center(
        child: Text(
          day,
          style: textStyle600(textColor ?? R.color.color_594E47, 18),
        ),
      ),
    );
  }

  Widget _dateView(String day, {bool isSelect = false}) {
    return Expanded(
      child: Container(
        width: 20,
        alignment: Alignment.center,
        decoration: isSelect ? BoxDecoration(
            color: R.color.color_F29727,
            shape: BoxShape.circle
        ) : null,
        child: Text(
          day,
          style: textStyle600(isSelect? R.color.white : R.color.color_594E47, 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
