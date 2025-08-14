import 'package:ahmed_yasser_portfolio/core/extensions/responsive_text.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static final TextStyle _mainFont = TextStyle(
    fontFamily: 'FiraCode',
  );

  static regular16Grey(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.normal,
      color: AppColors.secondaryTextColor);

  static regular16Primary(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.normal,
      color: AppColors.primaryColor);

  static regular16White(context) => _mainFont.copyWith(
        fontSize: 16.toResponsiveFontSize(context),
        fontWeight: FontWeight.normal,
        color: Colors.white,
      );
  static medium16Primary(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      color: AppColors.primaryColor);
  static medium16Grey(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryTextColor);
  static medium16White(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.w500,
      color: Colors.white);

  static medium24White(context) => _mainFont.copyWith(
        fontSize: 24.toResponsiveFontSize(context),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );
  static medium24Primary(context) => _mainFont.copyWith(
      fontSize: 24.toResponsiveFontSize(context),
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor);

  static medium24Grey(context) => _mainFont.copyWith(
        fontSize: 24.toResponsiveFontSize(context),
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryTextColor,
      );

  static medium32White(context) => _mainFont.copyWith(
        fontSize: 32.toResponsiveFontSize(context),
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  static medium32Primary(context) => _mainFont.copyWith(
        fontSize: 32.toResponsiveFontSize(context),
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      );

  static medium32Grey(context) => _mainFont.copyWith(
        fontSize: 32.toResponsiveFontSize(context),
        fontWeight: FontWeight.w500,
        color: AppColors.secondaryTextColor,
      );
  static regular24Grey(context) => _mainFont.copyWith(
      fontSize: 24.toResponsiveFontSize(context),
      fontWeight: FontWeight.normal,
      color: AppColors.secondaryTextColor);
  static regular24White(context) => _mainFont.copyWith(
      fontSize: 24.toResponsiveFontSize(context),
      fontWeight: FontWeight.normal,
      color: Colors.white);
  static bold16White(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static semiBold16White(context) => _mainFont.copyWith(
      fontSize: 16.toResponsiveFontSize(context),
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static semiBold32White(context) => _mainFont.copyWith(
      fontSize: 32.toResponsiveFontSize(context),
      fontWeight: FontWeight.w600,
      color: Colors.white);

  static semiBold32Primary(context) => _mainFont.copyWith(
      fontSize: 32.toResponsiveFontSize(context),
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColor);
}
