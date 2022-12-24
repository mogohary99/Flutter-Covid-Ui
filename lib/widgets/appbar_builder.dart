import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor.withOpacity(0.03),
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/search.svg'),
        onPressed: () {},
      ),
    ],
  );
}
