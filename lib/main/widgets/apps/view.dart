// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/accounts/main.dart';
import 'package:nbe_online_ft/cards/main.dart';
import 'package:nbe_online_ft/main/screens/history/view.dart';
import 'package:nbe_online_ft/main/screens/utils/view.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:nbe_online_ft/main/widgets/fonts/font_awesome_brands_icons.dart';
import 'package:nbe_online_ft/main/widgets/fonts/font_awesome_regular_icons.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AppsProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<AppsProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountsScreen()),
            );
          },
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.colors.accounts.withOpacity(.2),
                ),
                child: Center(child: Icon(FontAwesomeRegular.users, size: 25, color: AppTheme.colors.accounts,)),
              ),
              SizedBox(height: 5),
              RichText(text: TextSpan(text: 'Accounts', style: TextStyle(color: AppTheme.colors.accounts, fontSize: 13))),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardsScreen()),
            );
          },
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.colors.cards.withOpacity(.2),
                ),
                child: Center(child: Icon(FontAwesomeBrands.cc_visa, size: 25, color: AppTheme.colors.cards,)),
              ),
              SizedBox(height: 5),
              RichText(text: TextSpan(text: 'Cards', style: TextStyle(color: AppTheme.colors.cards, fontSize: 13))),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UtilsScreen()),
            );
          },
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.colors.utils.withOpacity(.2),
                ),
                child: Center(child: Icon(FontAwesomeRegular.faucet, size: 25, color: AppTheme.colors.utils,)),
              ),
              SizedBox(height: 5),
              RichText(text: TextSpan(text: 'Utilities', style: TextStyle(color: AppTheme.colors.utils, fontSize: 13))),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HistoryScreen()),
            );
          },
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppTheme.colors.history.withOpacity(.2),
                ),
                child: Center(child: Icon(FontAwesomeRegular.file_alt, size: 25, color: AppTheme.colors.history,)),
              ),
              SizedBox(height: 5),
              RichText(text: TextSpan(text: 'History', style: TextStyle(color: AppTheme.colors.history, fontSize: 13))),
            ],
          ),
        ),
      ],
    );
  }
}

