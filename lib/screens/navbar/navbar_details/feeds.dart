import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:prelura_test/components/secondary_text.dart';
import 'package:prelura_test/export.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SecondaryText(
                  text: 'Feed',
                  fontSize: 16,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(FeatherIcons.play),
                        10.horizontalSpace,
                        const Icon(FeatherIcons.aperture)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          10.verticalSpace,
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                separatorBuilder: (context, index) => 10.verticalSpace,
                itemBuilder: (context, index) {
                  return const FeedsItems();
                }),
          )
        ],
      ),
    ));
  }
}

class FeedsItems extends StatelessWidget {
  const FeedsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                      child: ClipOval(
                        child: Image.asset(
                          width: 40,
                          height: 40,
                          'assets/images/face.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  const SecondaryText(
                    text: 'Kofiama',
                    fontSize: 14,
                  ),
                ],
              ),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        10.verticalSpace,
        Image.asset(
          'assets/images/family.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        10.verticalSpace,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FeatherIcons.heart),
                  Row(
                    children: [
                      const Icon(FeatherIcons.crosshair),
                      10.horizontalSpace,
                      const Icon(FeatherIcons.award),
                    ],
                  ),
                ],
              ),
              const SecondaryText(
                text: '1 week ago',
                fontSize: 10,
              ),
            ],
          ),
        ),
        10.verticalSpace,
        const Divider(
          color: Colors.amber,
          thickness: 5,
        ),
      ],
    );
  }
}
