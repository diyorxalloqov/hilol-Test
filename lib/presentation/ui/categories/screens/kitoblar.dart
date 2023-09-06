import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hilol/application/core/constants/constant.dart';
import 'package:hilol/application/core/context/size.dart';
import 'package:hilol/domain/data/question.dart';
import 'package:hilol/presentation/ui/pages/kitoblarTest.dart';

import '../../../widgets/addSpace.dart';

class Kitoblar extends StatefulWidget {
  const Kitoblar({super.key});

  @override
  State<Kitoblar> createState() => _KitoblarState();
}

class _KitoblarState extends State<Kitoblar> {
  bool isTap = false;

  String searchText = '';
  List<int> filteredIndices = [];

  @override
  void initState() {
    super.initState();
    filteredIndices =
        List<int>.generate(Constants.kitoblar.length, (index) => index);
  }

  void updateSearch(String text) {
    setState(() {
      searchText = text.toLowerCase();
      filteredIndices = Constants.name
          .asMap()
          .entries
          .where((entry) {
            final name = entry.value.toLowerCase();
            return name.startsWith(searchText);
          })
          .map((entry) => entry.key)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitoblar".tr()),
        elevation: 0,
        actionsIconTheme: const IconThemeData(color: Colors.blueGrey, size: 30),
        actions: [
          IconButton(
              onPressed: () {
                isTap = !isTap;
                setState(() {});
              },
              icon: isTap
                  ? const Icon(Icons.cancel_outlined)
                  : const Icon(Icons.search))
        ],
        bottom: isTap
            ? PreferredSize(
                preferredSize: const Size.fromHeight(70.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.black),
                    onChanged: updateSearch,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        hintText: "Qidirish".tr(),
                        hintStyle: const TextStyle(color: Colors.blueGrey),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.blueGrey,
                        )),
                  ),
                ))
            : null,
      ),
      body: filteredIndices.isEmpty
          ? Center(
              child: Text(
                  "Hech qanday natija topilmadi, Boshqa so'zni kiriting".tr()),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                final int itemIndex = filteredIndices[index];
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KitoblarTest(
                                    info: allQuestionLists[index],
                                    name: Constants.name[itemIndex].tr(),
                                  )),
                        );
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 120,
                              width: 120,
                              child: Constants.kitoblar[itemIndex],
                            ),
                          ),
                          addWidth(context.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: context.width*0.6,
                                child: Text(
                                  Constants.name[itemIndex].tr(),
                                  style: const TextStyle(
                                      overflow: TextOverflow.clip,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              addHeight(10),
                              Text(
                                "Shayx Muhammad Sodiq \nMuhammad Yusuf".tr(),
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: filteredIndices.length,
            ),
    );
  }
}
