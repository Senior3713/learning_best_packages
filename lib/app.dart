import 'package:flutter/material.dart';
import 'package:learning_best_packages/pages/learning_cached_image.dart';
import 'package:learning_best_packages/pages/learning_date_picker.dart';
import 'package:learning_best_packages/pages/learning_fade_in_image.dart';
import 'package:learning_best_packages/pages/learning_image_picker.dart';
import 'package:learning_best_packages/pages/learning_time_picker.dart';

class BestPackages extends StatelessWidget {
  const BestPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LearningImagePicker(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData(useMaterial3: true),
      themeMode: ThemeMode.dark,
    );
  }
}
