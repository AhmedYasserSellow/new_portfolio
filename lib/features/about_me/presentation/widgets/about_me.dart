import 'package:ahmed_yasser_portfolio/core/utils/app_colors.dart';
import 'package:ahmed_yasser_portfolio/core/utils/app_text_styles.dart';
import 'package:ahmed_yasser_portfolio/core/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
  });

  Widget _buildImageWithLine(String imagePath) {
    return IntrinsicWidth(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Image.asset(imagePath),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      desktop: (context) => _buildDesktopLayout(context),
      tablet: (context) => _buildMobileLayout(context),
      mobile: (context) => _buildMobileLayout(context),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Hello, I\'m Ahmed!\n\nI\'m a self-taught Flutter developer based in Egypt. I specialize in building cross-platform mobile applications from scratch and turning them into seamless, modern user-friendly experiences.\n\nFor over a year, I\'ve been transforming my creativity and technical skills into functional, responsive, and visually appealing mobile apps. I\'ve collaborated with clients to bring their ideas to life and establish a strong digital presence.\n\nI\'m passionate about constantly learning and staying updated with the latest technologies, tools, and frameworks in the Flutter ecosystem to deliver top-notch solutions.',
            style: AppTextStyles.regular16Grey(context),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Spacer(),
              Expanded(
                flex: 2,
                child: _buildImageWithLine('assets/images/profile2.png'),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        // Photo on top with divider matching photo width
        _buildImageWithLine('assets/images/profile2.png'),
        SizedBox(height: 32),
        // Description below
        Text(
          'Hello, I\'m Ahmed!\n\nI\'m a self-taught Flutter developer based in Egypt. I specialize in building cross-platform mobile applications from scratch and turning them into seamless, modern user-friendly experiences.\n\nFor over a year, I\'ve been transforming my creativity and technical skills into functional, responsive, and visually appealing mobile apps. I\'ve collaborated with clients to bring their ideas to life and establish a strong digital presence.\n\nI\'m passionate about constantly learning and staying updated with the latest technologies, tools, and frameworks in the Flutter ecosystem to deliver top-notch solutions.',
          style: AppTextStyles.regular16Grey(context),
        ),
      ],
    );
  }
}
