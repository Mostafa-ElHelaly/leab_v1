import 'package:flutter/material.dart';
import 'package:leap/core/utils/app_size.dart';
import 'package:leap/core/widgets/app_bar.dart';
import 'package:leap/core/widgets/custom_drop_down.dart';
import 'package:leap/core/widgets/custom_text_field.dart';
import 'package:leap/core/widgets/jobs_and_intern_card.dart';
import 'package:leap/core/widgets/main_button.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context, text: 'Jobs'),
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 2),
        child: Column(
          children: [
            SizedBox(
                height: AppSize.defaultSize! * 4,
                child: CustomTextField(
                  controller: searchController,
                  hintText: 'What are you looking for ?',
                  hintStyle: TextStyle(
                    fontSize: AppSize.defaultSize!*1.3,

                  ),
                )),
            const CustomDropDown(text: '', hintText: 'Select Area',),
            const CustomDropDown(text: '', hintText: 'Select Skill',),
            SizedBox(height: AppSize.defaultSize!*2,),
            MainButton(text: 'search',onTap: (){},),
            SizedBox(height: AppSize.defaultSize!*4,),
            const JobsAndInternCard()

          ],
        ),
      ),
    );
  }
}
