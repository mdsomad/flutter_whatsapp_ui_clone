// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui_clone/model/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  Icon ic = Icon(
    Icons.call,
    color: Colors.teal,
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callData.length,
        itemBuilder: (BuildContext context, int i) => Column(
              children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 23.0,
                      backgroundColor: Colors.pink,
                      backgroundImage: AssetImage(callData[i].avater
                          //  ?? "images/No_image_available.jpg"

                          )),
                  title: Text(callData[i].name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Container(
                        child: callData[i].callType,
                      ),
                      Text(callData[i].time,
                          style: TextStyle(color: Colors.grey, fontSize: 15.0)),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: () {
                    print("Call Detail Open");
                  },
                )
              ],
            ));
  }
}
