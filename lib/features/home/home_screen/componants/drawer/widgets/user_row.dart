import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
class UserRowDrawer extends StatelessWidget {
  const UserRowDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.defaultSize!*7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: AppSize.defaultSize!*3.5,),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
          ),
          SizedBox(width: AppSize.defaultSize!*2,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Mohamed Ahmed',style: TextStyle(
                fontWeight: FontWeight.w700
              ),),
              Text('View Profile',style: TextStyle(
                fontSize: AppSize.defaultSize!*1.2,
                color: Colors.grey,
              ),),
            ],
          ),

        ],
      ),
    );
  }
}
