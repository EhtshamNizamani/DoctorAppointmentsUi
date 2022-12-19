import 'package:doctor_apoinment_app/constant.dart';
import 'package:doctor_apoinment_app/widget/reuseable_button.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 215, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/doctor3.jpg',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: mColor,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            color: mColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(color: mColor.withOpacity(0.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'Pateints',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            '1.8K',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'Experience',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            '10 Yr',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            'Rating',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                            '4.9',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          reUseTitle(
              text: 'Dr, Looney',
              color: mColor,
              size: 25,
              fontW: FontWeight.w500),
          const Expanded(
            child: ListTile(
              leading: Image(
                image: AssetImage('images/lined heart.png'),
                color: Colors.redAccent,
                width: 40,
                height: 40,
              ),
              title: Text('Surgeon'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore ',
            ),
          ),
          reUseTitle(text: 'Book Date', fontW: FontWeight.w700),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 60,
                    text: 'Dec 8',
                    context: context),
                reUseContainer(
                    colorb: mColor,
                    colorF: Colors.white,
                    fontSize: 16,
                    width: 80,
                    height: 60,
                    text: 'Dec 9',
                    context: context),
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 60,
                    text: 'Dec 10',
                    context: context),
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 60,
                    text: 'Dec 11',
                    context: context),
              ],
            ),
          ),
          reUseTitle(
            text: 'Book Time',
            fontW: FontWeight.w700,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 40,
                    text: '8:00 Am',
                    context: context),
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 40,
                    text: '9:00 Am',
                    context: context),
                reUseContainer(
                    colorb: mColor,
                    colorF: Colors.white,
                    fontSize: 16,
                    width: 80,
                    height: 40,
                    text: '10:00 Am',
                    context: context),
                reUseContainer(
                    colorF: Colors.black,
                    fontSize: 16,
                    width: 80,
                    height: 40,
                    text: '11:00 Am',
                    context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
