import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/color_manager.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorManager.whiteColor,
      title: const Icon(
        Icons.done_outlined,
        color: ColorManager.kPrimaryBlueDark,
        size: 35,
      ),
      content: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Done Submit',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: ConfigSize.defaultSize! * 2,
                  color: ColorManager.kPrimaryBlueDark),
            ),
          ],
        ),
      ),
    );
  }
}
