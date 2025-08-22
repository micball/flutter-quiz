import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor:
                        data['user_answer'] == data['correct_answer']
                        ? const Color.fromARGB(255, 144, 212, 243)
                        : const Color.fromARGB(255, 241, 89, 229),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'].toString(),
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        data['user_answer'].toString(),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 210, 156, 219),
                          fontSize: 12,
                          height: 1,
                        ),
                      ),
                      Text(
                        data['correct_answer'].toString(),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 143, 209, 240),
                          fontSize: 12,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
