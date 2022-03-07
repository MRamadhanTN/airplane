import 'package:airplane_2/cubit/page_cubit.dart';
import 'package:airplane_2/ui/pages/home_page.dart';
import 'package:airplane_2/ui/pages/setting_page.dart';
import 'package:airplane_2/ui/pages/transaction_page.dart';
import 'package:airplane_2/ui/pages/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'package:airplane_2/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigatonItem(
                index: 0,
                imageUrl: 'assets/images/icon_home.png',
              ),
              CustomBottomNavigatonItem(
                index: 1,
                imageUrl: 'assets/images/icon_booking.png',
              ),
              CustomBottomNavigatonItem(
                index: 2,
                imageUrl: 'assets/images/icon_card.png',
              ),
              CustomBottomNavigatonItem(
                index: 3,
                imageUrl: 'assets/images/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
