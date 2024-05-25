import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  DateTime? _selectedDate;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Student",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Form",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7),
            Container(
              padding: const EdgeInsets.only(left: 9),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Date of Birth",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7),
            Container(
              padding: const EdgeInsets.only(left: 9),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _selectedDate == null
                        ? 'Select Date'
                        : formatter.format(_selectedDate!),
                    style: const TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    onPressed: _presentDatePicker,
                    icon: const Icon(Icons.calendar_month),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Gender",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7),
            Container(
              padding: const EdgeInsets.only(left: 9),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            ElevatedButton(onPressed: (){
              
            } , child: )
          ],
        ),
      ),
    );
  }
}
