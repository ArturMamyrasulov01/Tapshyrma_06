import 'package:flutter/material.dart';
import 'package:tapshyrma_bloc_06/app/view/home_view.dart';

import 'app/utils/color_rel.dart';
import 'app/utils/string_rel.dart';

class MyApp extends MaterialApp {
  const MyApp({super.key})
      : super(
          debugShowCheckedModeBanner: false,
          home: const HomeView(),
        );
}
class MyAppBar extends AppBar{
  MyAppBar({super.key}):super( backgroundColor: ColorRel.colorBlack,
        centerTitle: true,
        title: const Text(
          StringRel.titleName,
        ),);
}
