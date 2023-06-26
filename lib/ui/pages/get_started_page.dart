import 'package:airpane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:airpane/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image_get_started.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 80,
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
