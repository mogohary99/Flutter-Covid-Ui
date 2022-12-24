import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int number;
  final Color iconColor;
  final VoidCallback press;

  const InfoCard({
    Key? key,
    required this.title,
    required this.number,
    required this.iconColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return GestureDetector(
          onTap: press,
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            padding: const EdgeInsets.only(top: 10, left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: iconColor.withOpacity(0.15),
                      child: SvgPicture.asset(
                        'assets/icons/running.svg',
                        color: iconColor,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2!
                          .copyWith(color: kTextColor.withOpacity(0.7)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(color: kTextColor),
                          children: [
                            TextSpan(
                              text: '$number\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const TextSpan(
                              text: 'People',
                              style: TextStyle(fontSize: 12, height: 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: LineReportChart(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
