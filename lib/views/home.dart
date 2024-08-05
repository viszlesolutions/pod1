import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pod/contanctagentdetails.dart';


import '../constants/colors.dart';
import '../data/homedata.dart';
import '../main.dart';

class HotelView extends StatelessWidget {
  const HotelView(
      {Key? key,
      this.hotelData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback? callback;
  final HotelData? hotelData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 16),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: callback,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        offset: const Offset(4, 4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 2,
                              child: Image.asset(
                                hotelData!.imagePath,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              color: HotelAppTheme.buildLightTheme()
                                  .backgroundColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, top: 8, bottom: 8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              hotelData!.titleTxt,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22,
                                              ),
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                //Text(
                                                // hotelData!.titleTxt,
                                                // style: TextStyle(
                                                //   fontSize: 14,
                                                ////  color: Colors.grey
                                                //  .withOpacity(0.8)),
                                                //  ),
                                                const SizedBox(
                                                  width: 4,
                                                ),
                                                //  Icon(
                                                // FontAwesomeIcons.mapMarkerAlt,
                                                //size: 12,
                                                //color: HotelAppTheme
                                                //  .buildLightTheme()
                                                // .primaryColor,
                                                //   ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 4),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, top: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          'Description',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  Color.fromARGB(255, 26, 9, 9)
                                                      .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: HexColor('#096609'),
                                      child: Center(
                                          child: Text('Revenue information',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Passbook                                                                           yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                       color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Tiltledeed                                                                           yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              '1b Register                                                                        yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'patan                                                                             yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'RoR Available                                                                    yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Sketch Available                                                             yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                          'SurveryNumber                                                  yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Adangal Number                                                           yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'FMB                                                                           yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Encumbrance Certifcate                                                  yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'patdhar passbook                                                       yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: HexColor('#096609'),
                                      child: Center(
                                          child: Text('Aminties',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'fencing facility                                                     yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Road Transport facility                                             yes',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Water Facility                                                     yes',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Transport Facility                                               yes',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Colors.white,
                                      child: Center(
                                          child: Text(
                                              'Borewell facility                                                yes',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: HexColor('#096609'),
                                      child: Center(
                                          child: Text('Property information',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              '      Title                                              Yes',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              '    Price                                        65,000,000',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              ' Acrs                                                 100',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              'Property type                           Agriculuture',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              ' Soil type                                        Blacksoil',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 236, 240, 236),
                                      child: Center(
                                          child: Text(
                                              'Listing type                                        Sale',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                   Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: HexColor('#096609'),
                                      child: Center(
                                          child: Text(
                                              '     Location Information               ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 242, 248, 241),
                                      child: Center(
                                          child: Text(
                                              'village                               Edurumondi          ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 242, 248, 241),
                                      child: Center(
                                          child: Text(
                                              'Mandal                              Nagayalanka             ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 242, 248, 241),
                                      child: Center(
                                          child: Text(
                                              'District                               krishna             ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                    Divider(),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: Color.fromARGB(255, 242, 248, 241),
                                      child: Center(
                                          child: Text(
                                         'State                                AdhdhraPradesh            ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15))),
                                    ),
                                  
                                   
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 40,
                                      color: HexColor('#096609'),
                                      child: Center(
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            agentpage()));
                                              },
                                              child: Text(
                                                'Contact agent',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(32.0),
                              ),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget getamintiesBarUI() {
  return Stack(
    children: <Widget>[
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 24,
          decoration: BoxDecoration(
            color: HotelAppTheme.buildLightTheme().backgroundColor,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -2),
                  blurRadius: 8.0),
            ],
          ),
        ),
      ),
      Container(
        color: HotelAppTheme.buildLightTheme().backgroundColor,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Filter',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.sort,
                              color:
                                  HotelAppTheme.buildLightTheme().primaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Divider(
          height: 1,
        ),
      )
    ],
  );
}
