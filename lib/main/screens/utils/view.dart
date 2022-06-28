// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:nbe_online_ft/main/widgets/top_bar/view.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class UtilsScreen extends StatelessWidget {
  const UtilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UtilsProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {

    List users = [
      {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
      {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
      {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
      {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
      {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
      {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
      {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
    ];


    final provider = context.read<UtilsProvider>();

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
            RichText(text: TextSpan(text: 'Utils', style: TextStyle(color: AppTheme.colors.black, fontSize: 18, fontWeight: FontWeight.w700))),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.79
                  ),
                  itemCount: users.length,
                  itemBuilder: (context, i) =>  Container(
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
                              child: Image.asset(
                                users[i]['image'],
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          RichText(text: TextSpan(text: users[i]['name'], style: TextStyle(color: AppTheme.colors.black, fontSize: 13, fontWeight: FontWeight.w500))),
                        ],
                      ),
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

