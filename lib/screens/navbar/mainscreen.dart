import 'package:flutter/material.dart';
import 'package:prelura_test/core/provider/home_provider.dart';
import 'package:prelura_test/export.dart';
import 'package:prelura_test/screens/navbar/bottom_navbar.dart';
import 'package:prelura_test/screens/navbar/navbar_details/add_items.dart';
import 'package:prelura_test/screens/navbar/navbar_details/feeds.dart';
import 'package:prelura_test/screens/navbar/navbar_details/home.dart';
import 'package:prelura_test/screens/navbar/navbar_details/profile.dart';
import 'package:prelura_test/screens/navbar/navbar_details/search.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ClipRRect(child: BottomNav()),
      body: Consumer<HomeProvider>(builder: (context, store, child) {
        return IndexedStack(
          index: store.navIndex,
          children: const [
            FeedsScreen(),
            Searchscreen(),
            AddItemScreen(),
            Homescreen(),
            Profilescreen(),
          ],
        );
      }),
    );
  }
}
