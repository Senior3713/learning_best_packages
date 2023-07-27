import 'package:flutter/material.dart';

class LearningFadeInImage extends StatefulWidget {
  const LearningFadeInImage({super.key});

  @override
  State<LearningFadeInImage> createState() => _LearningFadeInImageState();
}

class _LearningFadeInImageState extends State<LearningFadeInImage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(
              image: NetworkImage(
                  "https://media.istockphoto.com/id/645926888/photo/time-spent-in-nature-is-never-wasted.jpg?s=612x612&w=0&k=20&c=RAciSutDEea80s_nhRUg43XdDwneisRyANCsI026I8M="),
            ),
            FadeInImage(
              placeholder: NetworkImage(
                  "https://img.freepik.com/free-vector/oops-404-error-with-broken-robot-concept-illustration_114360-5529.jpg?w=2000"),
              image: NetworkImage("https://media.istockphoto.com/id/645926888/photo/time-spent-in-nature-is-never-wasted.jpg?s=612x612&w=0&k=20&c=RAciSutDEea80s_nhRUg43XdDwneisRyANCsI026I8M="),
            ),
          ],
        ),
      ),
    );
  }
}
