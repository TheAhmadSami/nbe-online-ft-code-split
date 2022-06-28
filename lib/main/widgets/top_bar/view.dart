// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:nbe_online_ft/main/widgets/fonts/font_awesome_regular_icons.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TopBarProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<TopBarProvider>();

    return Row(
      children: [
        Icon(FontAwesomeRegular.bars, size: 16,),
        SizedBox(width: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'lib/main/assets/media/picture.jpg',
            height: 50,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(text: 'Good morning', style: TextStyle(color: AppTheme.colors.black, fontSize: 16))),
            RichText(text: TextSpan(text: 'Ahmed', style: TextStyle(color: AppTheme.colors.black, fontSize: 16, fontWeight: FontWeight.w700))),
          ],
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppTheme.colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(FontAwesomeRegular.bell, size: 16),
          ),
        )
      ],
    );
  }
}

