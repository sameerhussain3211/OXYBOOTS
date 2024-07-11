import 'package:flutter/material.dart';
import 'package:oxyboots/customWidgets/customButtom.dart';
import 'package:oxyboots/loginSignup/previewPages/secondPreviewPage.dart';

class Firstpreviewpage extends StatelessWidget {
  const Firstpreviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img1.PNG"), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 600,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 300,
                child: Text(
                  "Start Journey With Nike",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                width: 350,
                child: Text(
                  "Smart, Georgeous & Fashionable collection",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ),
            Container(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 230,
                ),
                Custombuttom(
                  title: "Get Started",
                  size: 200,
                  onPressedCallback: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Secondpreviewpage(),
                        ));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
