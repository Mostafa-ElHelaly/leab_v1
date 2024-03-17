import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRowDrawerWeb extends StatelessWidget {
  const UserRowDrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mohamed Ahmed',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                'View Profile',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
