import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
class JobsAndInternCard extends StatefulWidget {
  const JobsAndInternCard({super.key});

  @override
  State<JobsAndInternCard> createState() => _JobsAndInternCardState();
}

class _JobsAndInternCardState extends State<JobsAndInternCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHeight!*.3,
      width: AppSize.screenWidth!*.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.defaultSize!),
        color: AppColors.containerColor,


      ),
      child: Padding(
        padding:   EdgeInsets.all(AppSize.defaultSize!*2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: AppColors.black,
            height: AppSize.defaultSize!*8,
            width: AppSize.defaultSize!*8,
            ),
            SizedBox(width:AppSize.defaultSize! ,),
            Column(
              children: [
                Text('TeamLead Engineer',style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: AppSize.defaultSize!*1.8,
                  fontWeight: FontWeight.w700
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
