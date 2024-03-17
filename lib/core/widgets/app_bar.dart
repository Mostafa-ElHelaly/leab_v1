import 'package:flutter/material.dart';
import 'package:leap/core/resource_manager/asset_path.dart';

AppBar appBar(BuildContext context, {required String text}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    title: Text(text),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
  );
}

AppBar homeAppBar(BuildContext context,
    {  String? text, void Function()? actionsOnPressed,Widget?widget }) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 1,
    title:widget?? Text('$text'),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Image.asset(AssetPath.menu),
    ),
    actions: [
      IconButton(
        onPressed: actionsOnPressed,
        icon: Image.asset(AssetPath.notification),
      )
    ],
  );
}
/*
 AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          title: Image.asset(AssetPath.logo,scale: 3,),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: AppColors.primaryColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
 */
