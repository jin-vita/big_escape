import 'package:flutter/material.dart';

import '../models/program_model.dart';

class ThumbCard extends StatelessWidget {
  const ThumbCard({
    super.key,
    required this.program,
  });

  final ProgramModel program;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: program.id,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(10, 10),
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        height: 300,
        child: Image.asset('assets/images/${program.thumb}'),
      ),
    );
  }
}
