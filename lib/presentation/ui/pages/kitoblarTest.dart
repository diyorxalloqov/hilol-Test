import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hilol/application/core/context/size.dart';
import 'package:hilol/domain/model/questionModel.dart';
import 'package:hilol/presentation/ui/pages/umumiyNatijaPage.dart';
import 'package:hilol/presentation/widgets/addSpace.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class KitoblarTest extends StatefulWidget {
  final String name;
  final List<QuestionModel> info;
  const KitoblarTest({super.key, required this.name, required this.info});

  @override
  State<KitoblarTest> createState() => _KitoblarTestState();
}

// there is fix with umumiyNatija page

class _KitoblarTestState extends State<KitoblarTest> {
  bool _isTap = false;

  int _currentindex = 0;

  int score = 0;

  PageController? _pageController;

  get controller => _pageController;

  int currentPage = 1;
  double percentage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    percentage = 0;
    setState(() {});
    super.initState();
  }

  void resetScores() {
    //orqaga qaytganda scoreni 0 ga aylantirish uchun
    setState(() {
      score = 0;
      _isTap = false;
      currentPage = 1;
      percentage = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kitob: ".tr(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            addWidth(context.width * 0.05),
            Text(
              widget.name,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.clip),
            ),
          ],
        ),
      ),
      body: PageView.builder(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("${currentPage.toString()}/${widget.info.length}"),
                  addWidth(10),
                  SizedBox(
                      width: 220,
                      child: LinearPercentIndicator(
                        animation: true,
                        percent: percentage,
                        progressColor: Colors.green,
                        backgroundColor: Colors.grey.shade400,
                      )),
                  IconButton(
                      onPressed: () {
                        showDialog(
                          barrierDismissible: false,
                            context: context,
                            builder: (context) => AlertDialog(
                                  insetPadding: const EdgeInsets.all(10),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  title: Center(
                                      child: Text(
                                    " Testni tark etishga \nishonchingiz komilmi?"
                                        .tr(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600),
                                  )),
                                  content: SizedBox(
                                    width: context.width * 0.6,
                                    height: context.height * 0.08,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    side: const BorderSide(
                                                        color: Colors.black26,
                                                        width: 1)),
                                                fixedSize: const Size(100, 50)),
                                            child: Text(
                                              "Yo'q".tr(),
                                              style: const TextStyle(
                                                  color: Colors.black),
                                            )),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.blueAccent.shade400,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    side: BorderSide.none),
                                                fixedSize: const Size(100, 50)),
                                            child: Text(
                                              "Ha".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      icon: const Icon(Icons.cancel_outlined))
                ],
              ),
              addHeight(context.height * 0.2),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  widget.info[index].question.toString().tr(),
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < widget.info[index].answers!.length; // it is true
                      i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _isTap = true;
                            _currentindex = i;
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(context.width, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          child: Text(
                            widget.info[index].answers!.keys
                                .toList()[i]
                                .tr(), // it is true
                            style: TextStyle(
                                color: _isTap
                                    ? _currentindex == i
                                        ? Colors.green
                                        : Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .color
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color), // it is true
                          )),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: context.width,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: _isTap
                            ? const LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Color.fromARGB(255, 182, 59, 204)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              )
                            : LinearGradient(colors: [
                                Colors.blueGrey.shade200,
                                Colors.blueGrey.shade200
                              ]),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: _isTap
                          ? ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isDismissible: false,
                                  context: context,
                                  elevation: 0,
                                  barrierColor: Colors.transparent,
                                  enableDrag: true,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30))),
                                  builder: (context) {
                                    return Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          color: widget
                                                  .info[index].answers!.values
                                                  .toList()[_currentindex]
                                              ? Colors.green
                                              : Colors.red,
                                          borderRadius:
                                              const BorderRadius.vertical(
                                                  top: Radius.circular(30))),
                                      child: Column(
                                        children: [
                                          addHeight(context.height * 0.02.h),
                                          widget.info[index].answers!.values
                                                  .toList()[_currentindex]
                                              ? Text(
                                                  "Zo'r Alloh ilmingizni ziyoda qilsin"
                                                      .tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              : Text(
                                                  "Javobingiz Xato!".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                          addHeight(context.height * 0.01.h),
                                          widget.info[index].answers!.values
                                                  .toList()[_currentindex]
                                              ? Text(
                                                  "${("Tanlangan variant: ").tr()} ${widget.info[index].answers!.keys.toList()[_currentindex].tr()}",
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ))
                                              : Column(
                                                  children: [
                                                    Center(
                                                      child: Text(
                                                        "Tog'ri Javob:".tr(),
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    addHeight(
                                                        context.height * 0.005),
                                                    for (int i = 0;
                                                        i <
                                                            widget
                                                                .info[index]
                                                                .answers!
                                                                .length;
                                                        i++)
                                                      widget
                                                                      .info[index]
                                                                      .answers!
                                                                      .values
                                                                      .toList()[
                                                                  i] ==
                                                              true
                                                          ? Text(
                                                              widget.info[index]
                                                                  .answers!.keys
                                                                  .toList()[i]
                                                                  .tr(),
                                                              style: const TextStyle(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .clip,
                                                                  color: Colors
                                                                      .white),
                                                            )
                                                          : const SizedBox
                                                              .shrink()
                                                  ],
                                                ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  if (_pageController!.page
                                                          ?.toInt() ==
                                                      widget.info.length - 1) {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              UmumiyNatijaPage(
                                                                controller:
                                                                    controller,
                                                                info:
                                                                    widget.info,
                                                                scores: score,
                                                                resetScores:
                                                                    resetScores,
                                                              )),
                                                    );
                                                  } else {
                                                    currentPage++;
                                                    Navigator.pop(context);
                                                    _pageController!.nextPage(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    250),
                                                        curve:
                                                            Curves.easeInExpo);
                                                    _isTap = false;

                                                    percentage +=
                                                        1 / widget.info.length;

                                                    setState(() {});
                                                  }
                                                });
                                                widget.info[index].answers!
                                                        .values
                                                        .toList()[_currentindex]
                                                    ? score++
                                                    : null;
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  fixedSize:
                                                      Size(context.width, 50),
                                                  elevation: 0,
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100))),
                                              child: Text(
                                                "Keyingisi".tr(),
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                                setState(() {});
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              child: Text(
                                "TEKShiRiSh".tr(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            )
                          : Center(
                              child: Text(
                                "TEKShiRiSh".tr(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
        itemCount: widget.info.length, // this mistake is fixing correct
      ),
    );
  }
}
