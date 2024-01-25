import 'package:coffe_shop/core/constant/colors/app_colors.dart';
import 'package:coffe_shop/routes/routes_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar customAppBar(
    {required String title,
    required BuildContext context,
    SystemUiOverlayStyle? systemOverlayStyle,
    List<Widget>? actions}) {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontSize: 18,
          ),
    ),
    leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors().black,
        )),
    actions: actions,
  );
}
