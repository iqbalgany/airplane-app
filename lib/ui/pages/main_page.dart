import 'package:airpane/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:airpane/shared/theme.dart';

import '../widgets/custom_bottom_navigation_widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            vertical: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_booking.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_card.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/images/icon_settings.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text(
            'Main Page',
          ),
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }
}
