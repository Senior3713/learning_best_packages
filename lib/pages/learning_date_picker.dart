import 'package:flutter/material.dart';

class LearningDatePicker extends StatefulWidget {
  const LearningDatePicker({super.key});

  @override
  State<LearningDatePicker> createState() => _LearningDatePickerState();
}

class _LearningDatePickerState extends State<LearningDatePicker> {
  DateTime date = DateTime(2023, 2, 7);

  @override
  Widget build(BuildContext context) {
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${date.year}/$month/$day",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            MaterialButton(
              shape: const StadiumBorder(),
              color: Colors.deepOrange,
              onPressed: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );

                if (newDate == null) return;

                setState(() => date = newDate);
                debugPrint(newDate.toString());
              },
              child: const Text(
                "Select Date",
              ),
            ),
          ],
        ),
      ),
    );
  }
}


