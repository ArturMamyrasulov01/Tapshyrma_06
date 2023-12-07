import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../data/note_data.dart';
import '../utils/text_style_rel.dart';

class NoteButtonWidget extends StatelessWidget {
  const NoteButtonWidget({
    Key? key,
    required this.size,
    required this.player,
    required this.index,
  }) : super(key: key);

  final Size size;
  final AudioPlayer player;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.13,
      color: noteData[index].buttonColor,
      child: TextButton(
        onPressed: () {
          player.play(
            AssetSource(
              "notes/note_$index.wav",
            ),
          );
        },
        child: Text(
          noteData[index].buttonName,
          style: TextStyleRel.colorBlack20Bold,
        ),
      ),
    );
  }
}
