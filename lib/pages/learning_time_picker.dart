import 'package:flutter/material.dart';

class LearningTimePicker extends StatefulWidget {
  const LearningTimePicker({super.key});

  @override
  State<LearningTimePicker> createState() => _LearningTimePickerState();
}

class _LearningTimePickerState extends State<LearningTimePicker> {
  TimeOfDay time = const TimeOfDay(hour: 3, minute: 120);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${time.hour} : ${time.minute}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            MaterialButton(
              shape: const StadiumBorder(),
              color: Colors.deepOrange,
              onPressed: () async {
                TimeOfDay? newTime = await showTimePicker(
                  context: context,
                  initialTime: time,
                );

                if(newTime == null) return;

                setState(() => time = newTime);
                debugPrint(newTime.toString());
              },
              child: const Text(
                "Select Time",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
