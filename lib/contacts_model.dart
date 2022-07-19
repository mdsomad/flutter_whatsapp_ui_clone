// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui_clone/chat_mode.dart';
import 'package:flutter_whatsapp_ui_clone/model/contacts_model_user_.dart';

class Conttacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (BuildContext context, int i) => Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 23.0,
                      backgroundColor: Colors.pink,
                      backgroundImage: AssetImage(chatData[i].avater
                          //  ?? "images/No_image_available.jpg"

                          )),
                  title: Text(chatData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(chatData[i].message,
                      style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                  trailing: Text(chatData[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 13.0)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Chat())));
                    print("Chat Detail Open");
                  },
                )
              ],
            ));
  }
}
