import 'package:globaladvice_new/core/utils/config_size.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: ConfigSize.defaultSize! * 2.8,
          backgroundImage: const AssetImage("assets/images/image@2x.png"),
        ),
        SizedBox(width: ConfigSize.defaultSize! * 2,),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mohamed Ahmed\n(Car Insurance)",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: ConfigSize.defaultSize! * 1.7,
                    ),
                  ),
                  Text(
                    "12:32 PM",
                    style: TextStyle(
                      fontSize: ConfigSize.defaultSize! * 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: ConfigSize.defaultSize! * .5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How Can I Help You?",
                    style: TextStyle(
                      fontSize: ConfigSize.defaultSize! * 1.4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
