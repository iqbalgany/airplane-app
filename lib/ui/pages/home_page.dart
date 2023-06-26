import 'package:airpane/ui/widgets/destination_card.dart';
import 'package:airpane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:airpane/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget populerDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                city: 'Tangerang',
                imageUrl: 'assets/images/image_destination1.png',
                name: 'Lake Ciliwung',
                rating: 4.8,
              ),
              DestinationCard(
                  city: 'Spain',
                  imageUrl: 'assets/images/image_destination2.png',
                  name: 'White House',
                  rating: 4.7),
              DestinationCard(
                city: 'Monaco',
                imageUrl: 'assets/images/image_destination3.png',
                name: 'Hill Heyo',
                rating: 4.8,
              ),
              DestinationCard(
                city: 'Japan',
                imageUrl: 'assets/images/image_destination4.png',
                name: 'Menarra',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/images/image_destination5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 140,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              city: 'Singajara',
              imageUrl: 'assets/images/image_destination6.png',
              name: 'Danau Beratan',
              rating: 4.5,
            ),
            DestinationTile(
              city: 'Australia',
              imageUrl: 'assets/images/image_destination7.png',
              name: 'Syney Opera',
              rating: 4.7,
            ),
            DestinationTile(
              city: 'Italy',
              imageUrl: 'assets/images/image_destination8.png',
              name: 'Roma',
              rating: 4.8,
            ),
            DestinationTile(
              city: 'Singapore',
              imageUrl: 'assets/images/image_destination9.png',
              name: 'Payung Teduh',
              rating: 4.5,
            ),
            DestinationTile(
              city: 'Monaco',
              imageUrl: 'assets/images/image_destination10.png',
              name: 'Hill Hey',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        populerDestination(),
        newDestinations(),
      ],
    );
  }
}
