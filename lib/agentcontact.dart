import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavTelRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Navigation Tel",
        home: new Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
            ),
            body: Column(
              children: [
                Card(
                  child: TextFormField(),
                )
              ],
            )));
  }

  _launchUrl() async {
    const Tel = "956765549939";

    if (await canLaunch(Tel)) {
      await launch(Tel);
    } else {
      throw 'Could Not Call!';
    }
  }
}
