import 'package:covid_way/constants.dart';
import 'package:covid_way/widgets/appbar_builder.dart';
import 'package:covid_way/widgets/info_card.dart';
import 'package:covid_way/widgets/prevention_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                InfoCard(
                  title: 'confirmed cases',
                  number: 1062,
                  iconColor: Color(0xFFFF8C00),
                  press: () {},
                ),
                InfoCard(
                  title: "Total Deaths",
                  iconColor: Color(0xFFFF2D55),
                  number: 75,
                  press: () {},
                ),
                InfoCard(
                  title: "Total Recovered",
                  iconColor: Color(0xFF50E3C2),
                  number: 689,
                  press: () {},
                ),
                InfoCard(
                  title: "New Cases",
                  iconColor: Color(0xFF5856D6),
                  number: 75,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Preventions',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    PreventionCard(
                      image: "assets/icons/hand_wash.svg",
                      title: "Wash Hands",
                    ),
                    PreventionCard(
                      image: "assets/icons/use_mask.svg",
                      title: "Use Masks",
                    ),
                    PreventionCard(
                      image: "assets/icons/Clean_Disinfect.svg",
                      title: "Clean Disinfect",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.4,
                            top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(colors: [
                            Color(0xFF60BE93),
                            Color(0xFF1B8D59),
                          ]),
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Dial 999 for\nMedical Help!\n',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              TextSpan(
                                text: 'If any symptamps appear',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(
                                      color: Colors.white.withOpacity(0.6),
                                      height: 1.5,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/nurse.svg'),
                      Positioned(
                        top: 30,
                        right: 10,
                        child: SvgPicture.asset('assets/icons/virus.svg'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}