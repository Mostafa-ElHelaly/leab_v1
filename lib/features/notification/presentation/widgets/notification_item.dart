import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: ConfigSize.defaultSize! * 8,
              height: ConfigSize.defaultSize! * 8,
            ),
            CircleAvatar(
              radius: ConfigSize.defaultSize! * 3.2,
              backgroundImage: const AssetImage("assets/images/image@2x.png"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: ConfigSize.defaultSize! * 1.9,
                child: CircleAvatar(
                  radius: ConfigSize.defaultSize! * 1.6,
                  backgroundImage: const AssetImage("assets/images/image@2x.png"),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: ConfigSize.defaultSize!,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: ConfigSize.defaultSize!,
            maxWidth: ConfigSize.defaultSize! * 27,
          ),
          child: Text(
            "Medical & Car Insurance\nOffer For You",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: ConfigSize.defaultSize! * 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
