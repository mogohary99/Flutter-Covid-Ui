import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PreventionCard extends StatelessWidget {
  final String title;
  final String image;
  const PreventionCard({
    Key? key, required this.title, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        const SizedBox(height: 10,),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}