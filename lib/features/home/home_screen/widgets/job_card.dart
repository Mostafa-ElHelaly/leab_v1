import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/colors.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/models/job.dart';
import 'package:leap/view/constants/colors.dart';
import 'package:leap/view/constants/extensions.dart';

class JobCard extends StatelessWidget {
  const JobCard({Key? key, required this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * .2,
      width: context.screenWidth,
      color: containerColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:   EdgeInsets.all(AppSize.defaultSize!*2),
            child: Image.asset(
              job.logo,
             scale: 4,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.title,
                style: const TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ).padding(
                  EdgeInsets.symmetric(
                  vertical: AppSize.defaultSize!,
                ),
              ),
              Text(
                job.location,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              Text(
                job.skill,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              Text(
                job.salary,
                style: const TextStyle(
                  color: mainFontColor,
                ),
              ),
              SizedBox(height: AppSize.defaultSize!*3.5,),
              InkWell(
                onTap: () {},


                child:   Container(
                    height: AppSize.defaultSize!*3.5,
                    width: AppSize.screenWidth!*.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppSize.defaultSize!*.5),
              border: Border.all(color: AppColors.primaryColor)
                    ),

                    child: Center(child: Text('View Job',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: AppSize.defaultSize!*1.4,

                    ),),)),
              ).padding(  EdgeInsets.all(AppSize.defaultSize!*.6))
            ],
          ),
        ],
      ),
    );
  }
}
