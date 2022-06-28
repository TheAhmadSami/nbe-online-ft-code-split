// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:nbe_online_ft/main/widgets/apps/view.dart';
import 'package:nbe_online_ft/main/widgets/balance/view.dart';
import 'package:nbe_online_ft/main/widgets/navigator/view.dart';
import 'package:nbe_online_ft/main/widgets/send_money/view.dart';
import 'package:nbe_online_ft/main/widgets/top_bar/view.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeScreenProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<HomeScreenProvider>();

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.greyLight,

      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            TopBar(),
            SizedBox(height: 15),
            Balance(),
            SizedBox(height: 15),
            Apps(),
            SizedBox(height: 15),
            SendMoney(),
            Spacer(),
            NavigatorPage()
          ],
        ),
      ),
    );
  }
}

