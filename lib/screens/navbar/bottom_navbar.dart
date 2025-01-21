import 'package:flutter/material.dart';
import 'package:prelura_test/components/mock.dart';
import 'package:prelura_test/core/provider/home_provider.dart';
import 'package:prelura_test/export.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, store, child) {
        List<Map<String, dynamic>> items = Mock.navItems();

        return SizedBox(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                items.length,
                (index) => _NavItem(
                  iconData: items[index]['icon'],
                  title: items[index]['label'],
                  isSelected: store.navIndex == index,
                  onPressed: () => store.navIndex = index,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.iconData,
    required this.title,
    required this.isSelected,
    this.onPressed,
    this.color,
  });

  final IconData iconData;
  final String title;
  final bool isSelected;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: isSelected ? (color ?? Colors.white) : Colors.grey,
          ),
          30.verticalSpace
          // Text(
          //   title,
          //   style: TextStyle(
          //     color: isSelected ? Colors.white : Colors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}
