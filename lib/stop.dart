import 'package:flutter/material.dart';

class StopAlarm extends StatelessWidget {
  const StopAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stop Alarm'),
      ),
      body: const Center(
        child: Text('Stop Alarm'),
        // child: Image.asset('assets/images/stop.png'),
      ),
    );
  }
}
