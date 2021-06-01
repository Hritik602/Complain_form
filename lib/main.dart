import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedValue = 0;
  File _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('COMPLAIN FORM'),
            actions: [
              Icon(
                Icons.blur_on,
                size: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  child: Text('dp'),
                  radius: 15,
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Choose a Category ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
                child: DropdownButton(
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(
                      child: Text("1"),
                      value: 0,
                    ),
                    DropdownMenuItem(
                      child: Text("2"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("3"),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text("4"),
                      value: 4,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Complain for',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      box(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black,
                        )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priority',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      box(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.black,
                          )),
                          child: DropdownButton(
                            items: [],
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Attachment',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        // ignore: deprecated_member_use
                        RaisedButton(child: Text('ADD'), onPressed: () {getImage();}),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 70,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(

                            ('$_image.').toString(),
                          ),
                          Text(
                            '2 Description',
                          ),
                          Text(
                            ' photos.jpg',
                          ),
                          Text(
                            '3 photos.jpg',
                          ),
                          Text(
                            '3 photos.jpg',
                          ),
                          Text(
                            '4 photos.jpg',
                          ),
                          Text(
                            '5 photos.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromRGBO(39, 35, 255, 1),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromRGBO(39, 35, 255, 1),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 115,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.deepOrange),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.email_outlined,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Save As Draft',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
  }

  box({double width, double height, Color color, decoration, Widget child}) {
    return Container(
        width: width,
        height: height,
        color: color,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: DropdownButton(
          items: [
            DropdownMenuItem(
              child: Text("1"),
              value: 1,
            ),
            DropdownMenuItem(
              child: Text("2"),
              value: 2,
            ),
            DropdownMenuItem(
              child: Text("3"),
              value: 3,
            ),
            DropdownMenuItem(
              child: Text("none"),
              value: null,
            )
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ));
  }
}
