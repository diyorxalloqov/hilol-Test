// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hilol/application/core/constants/constant.dart';
import 'package:hilol/application/core/context/size.dart';
import 'package:hilol/domain/data/question.dart';
import 'package:hilol/presentation/ui/pages/homeTest.dart';
import 'package:hilol/presentation/ui/pages/kitoblarTest.dart';
import 'package:hilol/presentation/widgets/addSpace.dart';

class BoshSahifa extends StatefulWidget {
  const BoshSahifa({super.key});

  @override
  State<BoshSahifa> createState() => _BoshSahifaState();
}

class _BoshSahifaState extends State<BoshSahifa> {
  final List<Image> _images = [
    Image.asset("assets/books/BaxtiyorOila.jpg"),
    Image.asset("assets/books/qalqoni.jpg"),
    Image.asset("assets/books/muminningUmrSafari.jpg"),
    Image.asset("assets/books/Qarz.jpg"),
    Image.asset("assets/books/yolgon.jpg"),
    Image.asset("assets/books/Hadis.jpg"),
  ];
  final List<Image> _images1 = [
    Image.asset("assets/books/Hadis21.jpg"),
    Image.asset("assets/books/HidoyatImomi.jpg"),
    Image.asset("assets/books/isrof.gif"),
  ];
  ScrollController? _scrollController;
  double size = 40;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(() {
      size = _scrollController!.position.pixels;
      setState(() {
        // if (_scrollController!.position.pixels == 15) {
        //   size = size += 10;
        // }

        // if (_scrollController!.position.pixels >= 0) {
        //   size = size += 10;
        //   print(_scrollController!.position.pixels);
        // } else if (_scrollController!.position.pixels <= 5) {
        //   size = size -= 1;
        //   print(_scrollController!.position.pixels);
        // }

        // else if (_scrollController!.position.pixels == 5) {
        //   size = size;
        // }
        // Calculate the change in size based on scrolling position
        size = 40 - _scrollController!.position.pixels * 0.5;
        size = size.clamp(30.0, double.infinity);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverAppBar(
            title: Text(
              "Bosh Sahifa".tr(),
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium!.color,
                  fontSize: size,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tezkor test".tr(),
                                style: TextStyle(
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.black
                                        : Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              addHeight(10),
                              Text(
                                "O'zingizni sinab ko'ring!\nHamma kitoblardan \numumiy test"
                                    .tr(),
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                              addHeight(15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const HomeTestPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)),
                                      ),
                                    ),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xFF005BEA),
                                            Color(0xff800080)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                            maxWidth: 170, minHeight: 45),
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/thunder.png",
                                              color: Colors.white,
                                              width: 30,
                                            ),
                                            addWidth(5),
                                            Text("BOShLASh".tr()),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            color: Colors.yellow.shade900,
                                            fontSize: 20),
                                      ),
                                      addWidth(15),
                                      Image.asset(
                                        "assets/star.jpg",
                                        width: 35,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          left: 270,
                          height: 130,
                          bottom: 90,
                          child: Image.asset(
                            "assets/thunderBig.jpg",
                            width: 100,
                            fit: BoxFit.cover,
                          ))
                    ]),
                  ),
                  addHeight(30),
                  Text(
                    "Tavsiya etamiz".tr(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  addHeight(20),
                  SizedBox(
                    width: double.infinity,
                    height: context.height * 0.2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KitoblarTest(
                                          info: allQuestionLists[index],
                                          name: Constants.name[index].tr(),
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: _images[index],
                          ),
                        );
                      },
                      itemCount: _images.length,
                    ),
                  ),
                  addHeight(20),
                  Text(
                    "Tez kunda:".tr(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  addHeight(20),
                  SizedBox(
                    width: double.infinity,
                    height: context.height * 0.2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: _images1[index],
                        );
                      },
                      itemCount: _images1.length,
                    ),
                  ),
                  addHeight(20)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
