import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

class CounterByMinute extends StatefulWidget {
  const CounterByMinute({super.key});

  @override
  State<CounterByMinute> createState() => _CounterByMinuteState();
}

class _CounterByMinuteState extends State<CounterByMinute> {
  late Timer _timer;
  int _start = 120; // 5 minutes in seconds
  bool isRepeatingTime = true;
  String? phone;

  @override
  void initState() {
    super.initState();
    if (isRepeatingTime) {
      startTimer();
    }
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
            isRepeatingTime = false;
          } else {
            _start = _start - 1;
          }
        },
      ),
    );
  }

  void resetTimerAndResendCode() {
    _timer.cancel();
    setState(() {
      _start = 120;
      isRepeatingTime = true;
    });
    startTimer();
  }

  String _formatTime(int time) {
    int minutes = time ~/ 60;
    int seconds = time % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringManager.youCanSendCodeAfter.tr(),
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: ConfigSize.defaultSize! * 1.5,
          ),
        ),
        SizedBox(
          width: ConfigSize.defaultSize! - 5,
        ),
        Text(
          _formatTime(_start),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: ConfigSize.defaultSize! * 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
