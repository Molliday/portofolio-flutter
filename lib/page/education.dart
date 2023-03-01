import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uas_mobile/page/hobby.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Education"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HobbyPage();
              },
            ));
          },
        ),
      ),
    );
  }
}
