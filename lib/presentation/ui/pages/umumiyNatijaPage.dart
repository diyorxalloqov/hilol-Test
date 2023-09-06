import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hilol/application/core/context/size.dart';

import 'package:hilol/domain/model/questionModel.dart';
import 'package:hilol/presentation/widgets/addSpace.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: must_be_immutable
class UmumiyNatijaPage extends StatelessWidget {
  final List<QuestionModel> info;
  int scores;
  final PageController controller;
  final VoidCallback resetScores; // Add this line
  UmumiyNatijaPage({
    required this.info,
    required this.scores,
    required this.resetScores,
    required this.controller,
    Key? key,
  }) : super(key: key);

// there is fix with umumiyNatija page

  @override
  Widget build(BuildContext context) {
    double percentage = scores / info.length * 100;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.blueGrey.shade900.withOpacity(0.8)
            : Colors.white,
        title: const Text("Umumiy natija"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularPercentIndicator(
            radius: 150,
            animation: true,
            animationDuration: 1000,
            lineWidth: 40,
            backgroundColor: Colors.red,
            progressColor: const Color.fromARGB(255, 85, 212, 89),
            percent: percentage / 100,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("To'g'ri javob"),
                addHeight(context.height * 0.01),
                Text(
                  scores.toString(),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 57, 218, 62), fontSize: 25),
                ),
                addHeight(context.height * 0.04),
                const Text("Noto'g'ri javob"),
                addHeight(context.height * 0.01),
                Text(
                  (info.length - scores).toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 25),
                ),
              ],
            ),
          ),
          addHeight(context.height * 0.1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Color.fromARGB(255, 182, 59, 204)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    controller.jumpToPage(0);
                    resetScores();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  child: Text("QAYTA ISHLASH".tr())),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(context.width, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                ),
                child: Center(
                  child: Text(
                    "ORQAGA QAYTISH".tr(),
                    style: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
