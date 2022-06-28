// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/cards/services/app_theme.dart';
import 'package:nbe_online_ft/cards/widgets/top_bar/view.dart';
import 'package:provider/provider.dart';

import 'cards_provider.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CardsProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {

    List users = [
      {"name": 'Ahmed', "image":"lib/cards/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/cards/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/cards/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/cards/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/cards/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/cards/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/cards/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/cards/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/cards/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/cards/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/cards/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/cards/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/cards/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/cards/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/cards/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/cards/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/cards/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/cards/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/cards/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/cards/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/cards/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/cards/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/cards/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/cards/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/cards/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/cards/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/cards/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/cards/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/cards/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/cards/assets/media/avatars/15.png"},
    ];


    final provider = context.read<CardsProvider>();

    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.greyLight,

      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            SizedBox(height: 10),
            RichText(text: TextSpan(text: 'Accounts', style: TextStyle(color: AppTheme.colors.black, fontSize: 18, fontWeight: FontWeight.w700))),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.79
                  ),
                  itemCount: users.length,
                  itemBuilder: (context, i) =>  UserBlock(name: users[i]['name'], image: users[i]['image'])
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserBlock extends StatelessWidget {

  final String name;
  final String image;

  const UserBlock({
    required this.name,
    required this.image,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: AppTheme.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(image),
              ),
            ),
            SizedBox(height: 5),
            RichText(text: TextSpan(text: name, style: TextStyle(color: AppTheme.colors.black, fontSize: 13, fontWeight: FontWeight.w500))),
          ],
        ),
      ),
    );
  }
}