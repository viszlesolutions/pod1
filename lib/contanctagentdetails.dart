import 'package:flutter/material.dart';
import 'package:pod/agentcontact.dart';

class agentpage extends StatefulWidget {
  @override
  _agentpageState createState() => _agentpageState();
}

class _agentpageState extends State<agentpage> {
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController mandalController = TextEditingController();
  TextEditingController villageController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    stateController.dispose();
    districtController.dispose();
    mandalController.dispose();
    villageController.dispose();
    pincodeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(239, 36, 102, 27),
          title: Text(
            'Contact agent',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: SingleChildScrollView(
              child: Card(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(220, 68, 151, 20)),
                            ),
                            hintText: 'Name',
                            labelText: 'Enter Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        controller: stateController,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(220, 41, 143, 16)),
                            ),
                            hintText: 'phonenumber',
                            labelText: 'Enter phonenumber',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        controller: districtController,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.black),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(220, 57, 151, 14)),
                            ),
                            hintText: 'Email',
                            labelText: 'Enter Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            )),
                        controller: mandalController,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          RaisedButton(
                              color: Color.fromARGB(255, 22, 90, 25),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              onPressed: () {
                              NavTelRun();
                              },
                              child: Text(
                                'Get contact details',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }
}
