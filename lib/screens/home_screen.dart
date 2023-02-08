import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/program_model.dart';
import '../widgets/program_widgets.dart';
import '../widgets/webtoon_appbar.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<ProgramModel> programs = [
    ProgramModel(title: '대탈출 시즌1', thumb: 'big1.jpg', id: 'eoxkfcnf1'),
    ProgramModel(title: '대탈출 시즌2', thumb: 'big2.jpg', id: 'eoxkfcnf2'),
    ProgramModel(title: '대탈출 시즌3', thumb: 'big3.jpg', id: 'eoxkfcnf3'),
    ProgramModel(title: '대탈출 시즌4', thumb: 'big4.jpg', id: 'eoxkfcnf4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const WebToonAppBar(
        title: '대탈출 다시보기',
      ),
      body: makeList(programs, context),
    );
  }

  Column makeList(List<ProgramModel> snapshot, BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: width > 959
                ? Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var program in programs)
                          ProgramWidgets(
                            program: program,
                            height: 300,
                          ),
                      ],
                    ),
                  )
                : ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    itemCount: snapshot.length,
                    itemBuilder: (context, index) {
                      var program = snapshot[index];
                      return ProgramWidgets(
                        program: program,
                        height: 300,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 30,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
