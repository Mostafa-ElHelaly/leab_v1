import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/resource_manger/locale_keys.g.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

import 'widgets/my_polcies.dart';

class MyPolicies extends StatefulWidget {
  const MyPolicies({super.key});

  @override
  State<MyPolicies> createState() => _MyPoliciesState();
}

class _MyPoliciesState extends State<MyPolicies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: ConfigSize.defaultSize!,),
            Center(
              child: Text(
                StringManager.messages.tr(),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: ConfigSize.defaultSize! * 2,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.all(ConfigSize.defaultSize! * 2),
                child: ListView.separated(
                    itemBuilder: (context, index) => const ChatItem(),
                    separatorBuilder: (context, index) => SizedBox(height: ConfigSize.defaultSize! * 2,),
                    itemCount: 3
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
