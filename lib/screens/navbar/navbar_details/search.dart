import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:prelura_test/components/custom_container.dart';
import 'package:prelura_test/components/secondary_text.dart';
import 'package:prelura_test/export.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryText(
                          text: 'Discover',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ])),
              const Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryText(
                          text: 'Recently viewed',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        Icon(FeatherIcons.arrowRight),
                      ],
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 60,
                        child: ClipOval(
                          child: Image.asset(
                            width: 60,
                            height: 60,
                            'assets/images/family.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    const SecondaryText(
                      text: 'Explore by Topic',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    5.verticalSpace,
                    SizedBox(
                      height: 70,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          separatorBuilder: (context, index) =>
                              10.horizontalSpace,
                          itemBuilder: (context, index) {
                            return const CustomContainer(
                                borderRadius: 4,
                                color: Colors.red,
                                width: 100,
                                child: SizedBox(
                                    height: 40,
                                    child: Center(
                                        child: SecondaryText(
                                      text: '#Nail',
                                      fontWeight: FontWeight.bold,
                                    ))));
                          }),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
