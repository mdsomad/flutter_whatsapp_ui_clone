// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 8,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/no_image.png"),
                radius: 26,
              ),
              title: Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
              trailing: Icon(Icons.more_horiz),
              onTap: () {},
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recent updates",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
        Positioned(
            top: 44,
            left: 47,
            child: Container(
                height: 24,
                width: 24,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    size: 16,
                  ),
                )))
      ],
    );
  }
}
