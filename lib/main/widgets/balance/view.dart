// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BalanceProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<BalanceProvider>();

    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppTheme.colors.dark,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(text: 'Balance', style: TextStyle(color: AppTheme.colors.white, fontSize: 16))),
            SizedBox(width: 10),
            Expanded(
              child: Center(
                child: RichText(text: TextSpan(text: '\$2,546,325.12', style: TextStyle(color: AppTheme.colors.white, fontSize: 25, fontWeight: FontWeight.w700))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

