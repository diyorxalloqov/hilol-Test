// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hilol/application/core/constants/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class BizningDasturlarPage extends StatefulWidget {
  const BizningDasturlarPage({super.key});

  @override
  State<BizningDasturlarPage> createState() => _BizningDasturlarPageState();
}

class _BizningDasturlarPageState extends State<BizningDasturlarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.blueGrey.shade900
            : Colors.white,
        title: Text(
          "Bizning dasturlar",
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).textTheme.bodyLarge!.color),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            )),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final packageName = Constants.bizningDasturlarName[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () async {
                // Construct the Play Store URL using the package name or ID

                final playStoreUrl =
                    'https://play.google.com/store/apps/details?id=$packageName';

                // Open the Play Store URL
                if (await canLaunch(playStoreUrl)) {
                  await launch(playStoreUrl);
                } else {
                  throw 'Could not launch $playStoreUrl';
                }
              },
              leading: Constants.bizningDasturlarImage[index],
              title: Text(packageName),
            ),
          );
        },
        itemCount: Constants.bizningDasturlarImage.length,
      ),
    );
  }
}
