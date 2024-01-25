import 'package:flutter/material.dart';
import '../../core/constant/colors/app_colors.dart';
import '../../core/constant/size/app_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.icon,
    this.label,
    this.hint,
    this.obscure = false,
    this.textEditingController,
    this.validator,
    this.inputType,
    this.suffixIcon,
    this.onChange,
    this.onTap,
    this.focusNode,
    this.numberOfLines,
    this.isEnable = true,
    this.onFieldSubmitted,
    this.isReadOnly = false,
    this.isField = false,
    this.onLeadingTap,
    this.radius,
    this.contentPadding,
  }) : super(key: key);
  final Widget? icon;
  final String? label;
  final String? hint;
  final bool obscure;
  final TextInputType? inputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onChange;
  final int? numberOfLines;
  final void Function()? onTap;
  final void Function()? onLeadingTap;
  final FocusNode? focusNode;
  final bool isEnable;
  final void Function(String)? onFieldSubmitted;
  final bool isReadOnly;
  final bool isField;
  final double? radius;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChange,
      controller: textEditingController,
      validator: validator,
      style: Theme.of(context).textTheme.displayLarge!.copyWith(
            color: AppColors().white,
            fontSize: 15,
          ),
      obscureText: obscure,
      enabled: isEnable,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      readOnly: isReadOnly,
      maxLines: numberOfLines ?? 1,
      cursorColor: AppColors.primaryColor,
      keyboardType: inputType,
      decoration: InputDecoration(
          fillColor: AppColors.darkGreyColor,
          enabled: isEnable,
          filled: isField,
          suffixIcon: suffixIcon,
          prefixIcon: icon,
          contentPadding: contentPadding ??
              const EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: AppColors.darkGreyColor2, fontSize: 14),
          labelText: label,
          labelStyle: const TextStyle(
            fontSize: 17,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(radius ?? AppSize.appCustomRadius),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 2)),
          disabledBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(radius ?? AppSize.appCustomRadius),
              borderSide: const BorderSide(color: AppColors.primaryColor)),
          errorBorder: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(radius ?? AppSize.appCustomRadius),
              borderSide: BorderSide(color: AppColors().red, width: 2)),
          border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(radius ?? AppSize.appCustomRadius),
          )),
    );
  }
}
