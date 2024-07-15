import 'package:flutter/material.dart';
import '../customWidgets/customButtom.dart';

class Recoverypassword extends StatefulWidget {
  const Recoverypassword({super.key});

  @override
  State<Recoverypassword> createState() => _RecoverypasswordState();
}

class _RecoverypasswordState extends State<Recoverypassword> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        leading: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 238, 238, 238),
          // color: Colors.cream,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const Center(
                  child: Text(
                    "Recovery Password",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "Please Enter Your Email Address To Recieve a Verification Code",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 103, 103, 103),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Email Address",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 250, 250),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Email',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Custombuttom(
                    title: "Continue",
                    size: 450,
                    onPressedCallback: () {},
                  ),
                ),
                const SizedBox(height: 500),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
