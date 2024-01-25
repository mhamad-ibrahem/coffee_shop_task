import 'package:coffe_shop/core/constant/assets/app_assets.dart';
import 'package:coffe_shop/core/constant/size/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constant/colors/app_colors.dart';
import '../../widgets/fields/custom_form_field.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget(
      {super.key, this.textEditingController, this.onSubmit});
  final TextEditingController? textEditingController;
  final void Function(String)? onSubmit;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isField: true,
      hint: 'Search coffee',
      radius: AppSize.appCustomRadius,
      onFieldSubmitted: onSubmit,
      icon: Container(
        padding: const EdgeInsets.all(14),
        width: 20,
        height: 20,
        child: SvgPicture.asset(AppAssets().searchIcon,fit: BoxFit.contain,),
      ),
      textEditingController: textEditingController,
      suffixIcon: Container(
        height: 45,
        width: 45,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12)),
        child: SvgPicture.asset(AppAssets().filterIcon),
      ),
    );
  }
}
