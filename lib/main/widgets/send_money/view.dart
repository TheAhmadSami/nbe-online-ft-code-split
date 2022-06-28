// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nbe_online_ft/main/services/app_theme.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class SendMoney extends StatefulWidget {

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {

  List users = [
    {"name": 'Ahmed', "image":"lib/main/assets/media/picture.jpg"},
    {"name": 'Casey', "image":"lib/main/assets/media/avatars/1.png"},
    {"name": 'Khaled', "image":"lib/main/assets/media/avatars/11.png"},
    {"name": 'Maya', "image":"lib/main/assets/media/avatars/3.png"},
    {"name": 'Mostafa', "image":"lib/main/assets/media/avatars/14.png"},
    {"name": 'Cris', "image":"lib/main/assets/media/avatars/15.png"},
  ];


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SendMoneyProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<SendMoneyProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(text: TextSpan(text: 'Send Money', style: TextStyle(color: AppTheme.colors.black, fontSize: 18, fontWeight: FontWeight.w700))),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 100,
          alignment: Alignment.center,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0,0,10,0),
                child: Container(
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
                          child: Image.asset(
                            users[i]['image'],
                            width: 70,
                          ),
                        ),
                        SizedBox(height: 5),
                        RichText(text: TextSpan(text: users[i]['name'], style: TextStyle(color: AppTheme.colors.black, fontSize: 13, fontWeight: FontWeight.w500))),
                      ],
                    ),
                  ),
                ),
              );
            }
          ),
        )
      ],
    );
  }
}

