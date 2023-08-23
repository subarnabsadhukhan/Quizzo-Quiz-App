import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(
    this.summaryData, {
    super.key,
  });

  Color wrongAnsColor(data) {
    Color indexColor = const Color.fromARGB(255, 123, 152, 255);
    if (data['user_answer'] != data['correct_answer']) {
      indexColor = const Color.fromARGB(255, 219, 33, 243);
    }
    return indexColor;
  }

  Icon iconColor(data) {
    Icon iconColor = const Icon(
      Icons.check_box_rounded,
      size: 17,
      color: Colors.green,
    );
    if (data['user_answer'] != data['correct_answer']) {
      iconColor = const Icon(
        Icons.cancel,
        size: 17,
        color: Color.fromARGB(255, 239, 102, 102),
      );
    }
    return iconColor;
  }

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(
                      end: 17,
                    ),
                    alignment: Alignment.center,
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: wrongAnsColor(data),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question']).toString(),
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 224, 177, 255),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: data['user_answer'] as String,
                                style: GoogleFonts.lato(
                                  color: wrongAnsColor(data),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              WidgetSpan(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    iconColor(data),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          (data['correct_answer']).toString(),
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 123, 152, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
