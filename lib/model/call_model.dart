// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String avater;
  final Icon callType;

  CallModel({
    required this.name,
    required this.time,
    required this.avater,
    required this.callType,
  });

  static Icon callReceived = Icon(
    Icons.call_received,
    size: 18.0,
    color: Colors.green,
  );
}

List<CallModel> callData = [
  CallModel(
      name: "Reya ",
      time: "12:25 am",
      callType: CallModel.callReceived,
      avater: "images/Girl-DP.jpg"),
  CallModel(
      name: "Yasin",
      time: "1.0:35 pm",
      callType: CallModel.callReceived,
      avater: "images/photos1.webp"),
  CallModel(
      name: "yaya",
      time: "10:35 pm",
      callType: CallModel.callReceived,
      avater: "images/imagesgirl.jpg"),
  CallModel(
      name: "pink",
      time: "01:13 pm",
      callType: CallModel.callReceived,
      avater: "images/girlss.jpg"),
  CallModel(
      name: "Sonom",
      time: "12:40 am",
      callType: CallModel.callReceived,
      avater: "images/girll.jpg"),
  CallModel(
      name: "Beuty",
      time: "11:15 pm",
      callType: CallModel.callReceived,
      avater: "images/buttgirl.jpg"),
];
