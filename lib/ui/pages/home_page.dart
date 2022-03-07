import 'package:airplane_2/ui/widgets/destination_card.dart';
import 'package:airplane_2/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import 'package:airplane_2/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nAnnisa Winarti',
                    style: blackTextStyle.copyWith(
                      fontSize: defaultMargin,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6),
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
                  image: AssetImage('assets/images/user.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/images/image_destination1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/images/image_destination2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/images/image_destination3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/images/image_destination4.png',
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
          bottom: 100,
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
              nameDestiantion:  'Danau Beratan',
              city: 'Singapore',
              imageUrl: 'assets/images/image_destination6.png',
              rating: 4.5,
            ),
            DestinationTile(
              nameDestiantion:  'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/images/image_destination7.png',
              rating: 4.7,
            ),
            DestinationTile(
              nameDestiantion:  'Roma',
              city: 'Italy',
              imageUrl: 'assets/images/image_destination8.png',
              rating: 4.8,
            ),
            DestinationTile(
              nameDestiantion:  'Payung Teduh',
              city: 'Monaco',
              imageUrl: 'assets/images/image_destination5.png',
              rating: 4.5,
            ),
            DestinationTile(
              nameDestiantion:  'Hill Hey',
              city: 'Singapore',
              imageUrl: 'assets/images/image_destination9.png',
              rating: 4.8,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestinations(),
      ],
    );
  }
}
