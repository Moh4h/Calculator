import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:my_calculator/component/matrial.dart';
import 'package:my_calculator/localization/locale.dart';
import 'package:my_calculator/localization/localeController.dart';
import 'package:my_calculator/main.dart';

class Home extends StatelessWidget {
  Home({super.key});
  Localecontroller c = Get.put(Localecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GetBuilder<Localecontroller>(
            builder:
                (controller) => IconButton(
                  onPressed: () {
                    c.changeIconTheme();
                  },
                  icon:
                      sharedPreferences!.getBool("icon") == null ||
                              sharedPreferences!.getBool("icon") == false
                          ? Icon(Icons.brightness_2)
                          : Icon(Icons.sunny),
                ),
          ),
        ],
        title: Text("1Appbar".tr),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 16,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder<Localecontroller>(
                      builder:
                          (cont) => TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 3,
                            controller: cont.controller.value,
                            readOnly: true,
                            showCursor: true,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            style: TextStyle(fontSize: 36),
                          ),
                    ),
                    Column(
                      spacing: 8,
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: GetBuilder<Localecontroller>(
                            builder:
                                (controller) => Text(
                                  "${controller.controllertotal.value.text} :Total",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                          ),
                        ),
                        Divider(thickness: 2),
                      ],
                    ),
                  ],
                ),
              ),
              StaggeredGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.clearOpration(),
                      mychild: Text(
                        "C",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.deleteOpration(),
                      mychild: Icon(Icons.disabled_by_default, size: 36),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addOpration("÷"),
                      mychild: Text("÷", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("7"),
                      mychild: Text("7", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("8"),
                      mychild: Text("8", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("9"),
                      mychild: Text("9", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addOpration("×"),
                      mychild: Text("×", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("4"),
                      mychild: Text("4", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("5"),
                      mychild: Text("5", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("6"),
                      mychild: Text("6", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addOpration("-"),
                      mychild: Text("-", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("1"),
                      mychild: Text("1", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("2"),
                      mychild: Text("2", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("3"),
                      mychild: Text("3", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addOpration("+"),
                      mychild: Text("+", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addDot(),
                      mychild: Text(".", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.addNumber("0"),
                      mychild: Text("0", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: customElevatedButton(
                      onPressed: () => c.calcOpration(),
                      mychild: Text("=", style: TextStyle(fontSize: 36)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
