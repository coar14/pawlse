import 'package:flutter/material.dart';
import 'package:pawlse/COMPONENTS/single_notification.dart';
import 'package:pawlse/THEMES/poppins.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({Key? key}) : super(key: key);

  @override
  State<MyNotifications> createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const PoppinsText(
                text: 'Notification',
                size: 24,
                font: FontWeight.w600,
                color: Colors.black),
          ),
          body: const SingleChildScrollView(child: SingleNotification())),
    );
  }
}
