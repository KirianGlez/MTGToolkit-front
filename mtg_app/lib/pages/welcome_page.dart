import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtg_app/misc/colors.dart';
import 'package:mtg_app/widgets/app_large_text.dart';
import 'package:mtg_app/widgets/responsive_button.dart';

import '../cubit/app_cubits.dart';
import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "mtg-app-background-1.png",
    "mtg-app-background-2.png",
    "mtg-app-background-3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                    margin:
                        const EdgeInsets.only(top: 150, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(text: "MagicCollection"),
                            AppText(text: "Colección", size: 30),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              child: AppText(
                                text:
                                    "Échale un ojo a tu colección o busca una carta específica",
                                color: AppColors.textColor2,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: () {
                                BlocProvider.of<AppCubits>(context).getData();
                              },
                              child: Container(
                                  width: 200,
                                  child: Row(children: [
                                    ResponsiveButton(width: 120)
                                  ])),
                            )
                          ],
                        ),
                        Column(
                          children: List.generate(3, (indexDots) {
                            return Container(
                              margin: const EdgeInsets.only(bottom: 2),
                              width: 8,
                              height: index == indexDots ? 25 : 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: index == indexDots
                                      ? AppColors.mainColor
                                      : AppColors.mainColor.withOpacity(0.5)),
                            );
                          }),
                        )
                      ],
                    )));
          }),
    );
  }
}
