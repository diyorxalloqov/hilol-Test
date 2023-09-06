// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hilol/application/core/context/size.dart';
import 'package:hilol/presentation/ui/pages/bizningDasturlarPage.dart';
import 'package:hilol/presentation/widgets/addSpace.dart';
import 'package:share/share.dart';

class Menyu extends StatefulWidget {
  const Menyu({super.key});

  @override
  State<Menyu> createState() => _MenyuState();
}

class _MenyuState extends State<Menyu> {
  ScrollController? _scrollController;

  @override
  Widget build(BuildContext context) {
    bool _onChanged = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            title: Text("Menyu".tr()),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          Share.share('Share app to another people');
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Ulashish".tr(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color),
                          ),
                        )),
                  ),
                  addHeight(context.height * 0.03),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Dasturga Hissa Qo'shish".tr(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color),
                          ),
                        )),
                  ),
                  addHeight(context.height * 0.03),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BizningDasturlarPage()));
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Bizning Dasturlar".tr(),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color),
                          ),
                        )),
                  ),
                  addHeight(context.height * 0.03),
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            constraints: const BoxConstraints(
                                minHeight: 100,
                                minWidth: double.infinity,
                                maxHeight: 100,
                                maxWidth: double.infinity),
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    addHeight(5),
                                    InkWell(
                                      onTap: () {
                                        context.setLocale(const Locale("uz"));
                                        Navigator.pop(context);
                                      },
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          "O'zbek(Lotin)",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .color,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    addHeight(25),
                                    InkWell(
                                      onTap: () {
                                        context.setLocale(const Locale("ru"));
                                        Navigator.pop(context);
                                      },
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          "Узбек(Кирил)",
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .color,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                        setState(() {});
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tilni tanlang".tr(),
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            Text(
                              context.locale == const Locale("ru")
                                  ? "Узбек(Кирил)"
                                  : "O'zbek (lotin)",
                              style: TextStyle(color: Colors.blueGrey.shade400),
                            )
                          ],
                        ),
                      )),
                  addHeight(context.height * 0.03),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _onChanged = !_onChanged;
                        });
                        final newBrightness =
                            _onChanged ? Brightness.dark : Brightness.light;
                        AdaptiveTheme.of(context).setThemeMode(
                          newBrightness == Brightness.dark
                              ? AdaptiveThemeMode.dark
                              : AdaptiveThemeMode.light,
                        );
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tungi Fon".tr(),
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            Switch.adaptive(
                              value: _onChanged,
                              onChanged: (value) {
                                setState(() {
                                  _onChanged = value;
                                });
                                final newBrightness =
                                    value ? Brightness.dark : Brightness.light;
                                AdaptiveTheme.of(context).setThemeMode(
                                  newBrightness == Brightness.dark
                                      ? AdaptiveThemeMode.dark
                                      : AdaptiveThemeMode.light,
                                );
                              },
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
