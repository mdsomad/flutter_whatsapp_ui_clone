// ignore_for_file: prefer_const_constructors
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MassagePage extends StatefulWidget {
  const MassagePage({Key? key}) : super(key: key);

  @override
  State<MassagePage> createState() => _MassagePageState();
}

class _MassagePageState extends State<MassagePage> {
  static const StyleSender = BubbleStyle(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topLeft,
      nip: BubbleNip.leftTop,
      showNip: false);

  static const StyleRecviver = BubbleStyle(
      margin: const BubbleEdges.only(top: 10),
      alignment: Alignment.topRight,
      nip: BubbleNip.rightTop,
      color: const Color.fromRGBO(225, 255, 199, 1),
      showNip: false);
  ScrollController _mycontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _mycontroller.jumpTo(_mycontroller.position.maxScrollExtent);
    });
    return ListView(
      controller: _mycontroller,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: StyleRecviver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: StyleSender,
          child: const Text('Well, see for End'),
        ),
      ],
    );
  }
}
