import 'package:flutter/cupertino.dart';
import '../models/program_model.dart';
import '../screens/detail_screen.dart';
import 'thumb_card.dart';

class ProgramWidgets extends StatelessWidget {
  const ProgramWidgets({
    super.key,
    required this.program,
    required this.height,
  });

  final ProgramModel program;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailScreen(
              program: program,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          ThumbCard(
            program: program,
            height: height,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            program.title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
