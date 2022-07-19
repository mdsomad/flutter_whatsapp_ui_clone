// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui_clone/massagepage.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Md Somad'),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MassagePage()),
          Divider(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
            child: Row(
              children: [
                Flexible(
                    child: TextFormField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mic),
                    icon: Icon(
                      Icons.emoji_emotions,
                    ),
                    hintText: "Type a Message",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.white, width: 2.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            BorderSide(color: Colors.white, width: 2.0)),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
