import 'package:doctor_apoinment_app/constant.dart';
import 'package:doctor_apoinment_app/doc_details.dart';
import 'package:doctor_apoinment_app/screens/doctors_details_screen.dart';
import 'package:doctor_apoinment_app/widget/reuseable_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  static String routeName = '/';
  HomeScreen({Key? key}) : super(key: key);

  List catName = [
    'Eye',
    'Dental',
    'Heart',
    'Ear',
    'Brain',
  ];

  List<Icon> catIcon = const [
    Icon(MdiIcons.eye, size: 30, color: mColor),
    Icon(MdiIcons.toothOutline, size: 30, color: mColor),
    Icon(MdiIcons.heart, size: 30, color: mColor),
    Icon(MdiIcons.earHearing, size: 30, color: mColor),
    Icon(MdiIcons.brain, size: 30, color: mColor),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 193, 215, 225),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            width: size.width * 1,
            constraints: BoxConstraints(
                maxHeight: size.height * 0.3, maxWidth: size.width * 1),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: mColor),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/doctor1.jpg'),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: size.height * 0.025),
                    reUseTitle(
                        text: 'Hi, Programers',
                        size: 14,
                        color: Colors.white,
                        fontW: FontWeight.normal),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      width: size.width * .6,
                      child: reUseTitle(
                          text: 'Your Health is Our First Priority',
                          size: 26,
                          color: Colors.white),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 15, bottom: 20),
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Search here',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                      ),
                    ),
                    reUseTitle(
                        text: 'Categories', fontW: FontWeight.bold, size: 16),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: size.height * 0.15,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: catIcon.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 60,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: catIcon[index],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      catName[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ));
                          }),
                    ),
                    reUseTitle(
                        text: 'Recommended Doctors',
                        size: 16,
                        fontW: FontWeight.w600),
                    const SizedBox(height: 15),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: docDetails.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DoctorDetailsScreen()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(8),
                                        alignment: Alignment.topRight,
                                        height: 200,
                                        width: 250,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  docDetails[index]['image'],
                                                ),
                                                fit: BoxFit.cover)),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: mColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, bottom: 4),
                                        child: reUseTitle(
                                            text: docDetails[index]['name'],
                                            color: mColor,
                                            fontW: FontWeight.bold,
                                            size: 18),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: reUseTitle(
                                            text: docDetails[index]
                                                ['profession'],
                                            size: 18),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            MdiIcons.star,
                                            color: Colors.yellow,
                                          ),
                                          Text(docDetails[index]['star']
                                              .toString())
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
