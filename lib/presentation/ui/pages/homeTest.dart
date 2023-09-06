import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hilol/application/core/context/size.dart';
import 'package:hilol/domain/data/question.dart';
import 'package:hilol/presentation/widgets/addSpace.dart';

class HomeTestPage extends StatefulWidget {
  const HomeTestPage({super.key});

  @override
  State<HomeTestPage> createState() => _HomeTestPageState();
}

class _HomeTestPageState extends State<HomeTestPage> {
  bool _isTap = false;

  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  int _currentindex = 0;
  int _score = 0;
  int imkon = 3;
  int incorrectanswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
            child: Text(
          _score.toString(),
          style: TextStyle(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
              fontSize: 20),
        )),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Imkon: $imkon",
          style: TextStyle(
              color: imkon == 3
                  ? Colors.greenAccent.shade400
                  : imkon == 2
                      ? Colors.orange
                      : Colors.red),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    // DISMISSIBLE
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                          insetPadding: const EdgeInsets.all(10),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          title: Center(
                              child: Text(
                            " Testni tark etishga \nishonchingiz komilmi?".tr(),
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          )),
                          content: SizedBox(
                            width: context.width * 0.7,
                            height: context.height * 0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                                BorderRadius.circular(50),
                                            side: const BorderSide(
                                                color: Colors.black26,
                                                width: 1)),
                                        fixedSize: const Size(100, 50)),
                                    child: Text(
                                      "Yo'q".tr(),
                                      style:
                                          const TextStyle(color: Colors.black),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                      _isTap = false;
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.blueAccent.shade400,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
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
              icon: const Icon(
                Icons.cancel_outlined,
              ))
        ],
      ),
      body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                addHeight(context.height * 0.04.h),
                addHeight(context.height * 0.01.h),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(tezkorTest[index].question.toString().tr()),
                ),
                addHeight(context.height * 0.05.h),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < tezkorTest[index].answers!.length; i++)
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
                              tezkorTest[index].answers!.keys.toList()[i].tr(),
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
                                          .color),
                            )),
                      ),
                  ],
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
                              !tezkorTest[index]
                                      .answers!
                                      .values
                                      .toList()[_currentindex]
                                  ? incorrectanswer++
                                  : null;
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
                                          color: tezkorTest[index]
                                                  .answers!
                                                  .values
                                                  .toList()[_currentindex]
                                              ? Colors.green
                                              : Colors.red,
                                          borderRadius:
                                              const BorderRadius.vertical(
                                                  top: Radius.circular(30))),
                                      child: Column(
                                        children: [
                                          addHeight(context.height * 0.02.h),
                                          tezkorTest[index]
                                                  .answers!
                                                  .values
                                                  .toList()[_currentindex]
                                              ? Text(
                                                  "Mashaalloh!".tr(),
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
                                          tezkorTest[index]
                                                  .answers!
                                                  .values
                                                  .toList()[_currentindex]
                                              ? SizedBox(
                                                  width: double.infinity,
                                                  child: Center(
                                                    child: Text(
                                                        "${("Tanlangan variant").tr()} : ${tezkorTest[index].answers!.keys.toList()[_currentindex].tr()}",
                                                        style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            overflow:
                                                                TextOverflow
                                                                    .clip)),
                                                  ),
                                                )
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
                                                    addHeight(context.height *
                                                        0.005.h),
                                                    for (int i = 0;
                                                        i <
                                                            tezkorTest[index]
                                                                .answers!
                                                                .length;
                                                        i++)
                                                      tezkorTest[index]
                                                                      .answers!
                                                                      .values
                                                                      .toList()[
                                                                  i] ==
                                                              true
                                                          ? Text(
                                                              tezkorTest[index]
                                                                  .answers!
                                                                  .keys
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
                                                  //
                                                  // THERE WAS FIX
                                                  //
                                                  if (_pageController!.page
                                                              ?.toInt() ==
                                                          tezkorTest.length -
                                                              1 ||
                                                      incorrectanswer == 3) {
                                                    showDialog(
                                                      barrierDismissible: false,
                                                        context: context,
                                                        builder:
                                                            (context) =>
                                                                AlertDialog(
                                                                  title: Center(
                                                                    child: Text(
                                                                      "Afsus! Yutqazdingiz"
                                                                          .tr(),
                                                                      style: const TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontSize:
                                                                              25,
                                                                          fontWeight:
                                                                              FontWeight.w800),
                                                                    ),
                                                                  ),
                                                                  content: SizedBox(
                                                                      width: double.infinity,
                                                                      height: context.height * 0.11,
                                                                      child: Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Center(
                                                                            child:
                                                                                Text('${("Jami").tr()} $_score ${("ta savolga javob berdingiz.").tr()}'),
                                                                          ),
                                                                          addHeight(context.height *
                                                                              0.002),
                                                                          TextButton(
                                                                              onPressed: () {
                                                                                Navigator.pop(context);
                                                                                Navigator.pop(context);
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: const Text(
                                                                                "OK",
                                                                                style: TextStyle(color: Colors.orange),
                                                                              ))
                                                                        ],
                                                                      )),
                                                                ));
                                                  } else {
                                                    Navigator.pop(context);
                                                    _pageController!.nextPage(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    250),
                                                        curve:
                                                            Curves.easeInExpo);
                                                    _isTap = false;
                                                  }
                                                  setState(() {
                                                    tezkorTest[index]
                                                                .answers!
                                                                .values
                                                                .toList()[
                                                            _currentindex]
                                                        ? _score++
                                                        : imkon--;
                                                  });
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    fixedSize:
                                                        Size(context.width, 50),
                                                    elevation: 0,
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100))),
                                                child: Text(
                                                  "Keyingisi".tr(),
                                                  style: const TextStyle(
                                                      color: Colors.black),
                                                )),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
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
                addHeight(context.height * 0.04.h)
              ],
            );
          }),
    );
  }
}
