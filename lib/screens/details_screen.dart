import 'package:covid_way/constants.dart';
import 'package:covid_way/widgets/appbar_builder.dart';
import 'package:covid_way/widgets/weekly_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,right: 20,left: 20,),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 21),
                      blurRadius: 53,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New Cases',
                          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.black38, fontWeight: FontWeight.w600),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.black38,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '547',
                          style: Theme.of(context).textTheme.headline2!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                              height: 1.5),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '5.9%',
                          style: TextStyle(
                            color: kPrimaryColor,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/increase.svg"),
                      ],
                    ),
                    Text(
                      'From Health Center',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: Colors.black26, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),
                    WeeklyChart(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildRichText(
                          percentage: 6.43,
                          title: "From Last Week",
                        ),
                        buildRichText(
                          percentage: 9.43,
                          title: 'Recovery Rate',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 21),
                      blurRadius: 54,
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Global Map",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/more.svg")
                      ],
                    ),
                    SizedBox(height: 10),
                    SvgPicture.asset("assets/icons/map.svg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  RichText buildRichText({required String title, required double percentage}) {
    return RichText(
      text:  TextSpan(
        children: [
          TextSpan(
            text: '$percentage%\n',
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.black38,
              fontSize: 16,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
