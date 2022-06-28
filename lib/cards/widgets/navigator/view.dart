// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/cards/services/app_theme.dart';
import 'package:nbe_online_ft/cards/widgets/fonts/font_awesome_light_icons.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NavigatorProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<NavigatorProvider>();

    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: AppTheme.colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          NavigatorBlock(name: 'Home', icon: FontAwesomeLight.home_alt),
          NavigatorBlock(name: 'Transfer', icon: FontAwesomeLight.random),
          NavigatorBlock(name: 'Benef.', icon: FontAwesomeLight.users),
          NavigatorBlock(name: 'ATMs', icon: FontAwesomeLight.map_marker_alt),
          NavigatorBlock(name: 'Air Pay', icon: FontAwesomeLight.credit_card),
        ],
      )
    );
  }
}

class NavigatorBlock extends StatelessWidget {

  final String name;
  final IconData icon;

  const NavigatorBlock({
    required this.name,
    required this.icon,
    Key? key
  }) : super(key: key
  );


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => NavigatorProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<NavigatorProvider>();

    return Container(
      width: 58,
      height: 58,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
      decoration: BoxDecoration(
          color: AppTheme.colors.greyLight,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: AppTheme.colors.greyDark, size: 20,),
          SizedBox(height: 5),
          RichText(text: TextSpan(text: name, style: TextStyle(color: AppTheme.colors.greyDark, fontSize: 12)))
        ],
      ),
    );

  }
}