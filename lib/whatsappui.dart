// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui_clone/Status.page.dart';
import 'package:flutter_whatsapp_ui_clone/callpage.dart';
import 'package:flutter_whatsapp_ui_clone/contacts_model.dart';
import 'package:image_picker/image_picker.dart';

// First yah 2 add dependencies: package --> ( image_picker: ^0.8.5+3 ) & ( bubble: ^1.2.1 )


class WhatsApp extends StatefulWidget {
  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabCon;

  @override
  void initState() {
    _tabCon = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {
          if (_tabCon.index == 0) {
            getCamera();
          }
          print(_tabCon.index);
        });
      });
    super.initState();
  }

  Future getCamera() async {
    final myimage = await pack.pickImage(source: ImageSource.camera);
    setState(() {
      if (myimage != null) {
        _image = File(myimage.path);
      } else {
        print("No Selacet");
      }
    });
  }

  final pack = ImagePicker();
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Color(0xff075e54),
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabCon,
            indicatorColor: Colors.pink,
            unselectedLabelColor: Colors.white,
            indicatorWeight: 4,
            labelColor: Colors.red,
            labelPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 1),
            isScrollable: true,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Tab(icon: Icon(Icons.photo_camera)),
              Container(
                alignment: Alignment.center,
                width: 90,
                child: Tab(
                  text: "CHATS",
                ),
              ),
              Container(
                width: 90,
                alignment: Alignment.center,
                child: Tab(
                  text: "STATUS",
                ),
              ),
              Container(
                width: 90,
                alignment: Alignment.center,
                child: Tab(
                  text: "CALLS",
                ),
              ),
            ],
          )),
      body: TabBarView(controller: _tabCon, children: [
        Center(
          child: Text("Hello"),
        ),
        // Tab(text: "Hello",),
        Conttacts(),
        StatusPage(),
        CallPage()
      ]),
      floatingActionButton: _getFAB(),
    );
  }

  _getFAB() {
    if (_tabCon.index == 1) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.message),
      );
    }
    if (_tabCon.index == 3) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.add_ic_call),
      );
    }
    if (_tabCon.index == 2) {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.photo_camera),
      );
    }
  }
}






// yah hai separate TabBar ka list crate 

// final List<Tab> taptps = <Tab>[
//     Tab(
//       icon: Icon(Icons.camera),
//     ),
//     Tab(
//       text: "Chat",
//     ),
//     Tab(
//       text: "Stach",
//     ),
//     Tab(
//       text: "Camera",
//     )
//   ];