import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';

class InternshipsNums extends StatelessWidget {
  const InternshipsNums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '64',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 72,
                ),
              ),
              Text(
                ' Internships For Developers',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 72,
                ),
              ),
            ],
          ),
          Text(
            ' Home  >  Internships',
            style: TextStyle(
              color: AppColors.backGroundColor,
              fontSize: WidgetRatio.heightRatio(67),
            ),
          ),
        ],
      ),
    );
  }
}
