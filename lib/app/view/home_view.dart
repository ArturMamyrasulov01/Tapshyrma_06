import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_06/app/data/note_data.dart';

import '../../my_app.dart';
import '../common_widgets/note_button_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer player = AudioPlayer();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),
      body: SizedBox(
        height: size.height * 0.99,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return NoteButtonWidget(
              index: index,
              size: size,
              player: player,
            );
          },
          itemCount: noteData.length,
        ),
      ),
    );
  }
}
