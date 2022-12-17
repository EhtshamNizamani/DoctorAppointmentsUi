import 'package:doctor_apoinment_app/widget/reuseable_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 139, 255, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'images/doctors.png',
                  width: size.width * 0.8,
                ),
                const Text('Doctors Online',
                    style: TextStyle(fontSize: 38, color: Colors.white)),
                const Text('Oppoint your Doctor',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                letsGoButton(
                  context: context,
                  colorB: Colors.white,
                  colorF: Colors.blue,
                  fontSize: 16,
                ),
                Image.asset(
                  'images/lined heart.png',
                  color: Colors.white,
                  width: size.width * .8,
                ),
              ]),
        ),
      ),
    );
  }
}
