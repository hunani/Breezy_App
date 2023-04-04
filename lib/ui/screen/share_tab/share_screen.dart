import 'package:flutter/material.dart';

class ShareScreen extends StatelessWidget {
  static const String routeName = '/shareScreen';
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.purpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
