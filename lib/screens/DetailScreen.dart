import 'package:flutter/material.dart';

import '../model/email.dart';

const primaryColor = Colors.blue;

const fromTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w700,
);

const dateTextStyle = TextStyle(
  color: Colors.black45,
  fontSize: 14.0,
  fontWeight: FontWeight.w300,
);

const subjectTextStyle = TextStyle(
  fontSize: 15.0,
  fontWeight: FontWeight.w400,
);

class DetailScreen extends StatelessWidget {
  final Email email;

  const DetailScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(email.subject),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('From: ${email.from}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(email.subject, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text(email.dateTime.toString().substring(0, 16),
                  style: dateTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text(email.body),
            ],
          ),
        ));
  }
}
