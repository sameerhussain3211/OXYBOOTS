import 'package:flutter/material.dart';
import 'package:oxyboots/customWidgets/customButtom.dart';
import 'package:oxyboots/loginSignup/previewPages/thirdpreviewPage.dart';

class Secondpreviewpage extends StatelessWidget {
  const Secondpreviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/img2.PNG"), fit: BoxFit.cover),
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
                  "Follow Latest Style Shoes",
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
                  "There Are MAny Beautiful And Attractive Plants to Your Room",
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
                  width: 290,
                ),
                Custombuttom(
                  title: "Next",
                  size: 140,
                  onPressedCallback: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Thirdpreviewpage(),
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
