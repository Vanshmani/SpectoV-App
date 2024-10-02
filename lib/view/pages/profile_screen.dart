import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    final double paddingHorizontal = screenWidth * 0.07;
    final double paddingVertical = screenHeight * 0.07;
    final double fontSizeLarge = screenWidth * 0.1;
    final double fontSizeMedium = screenWidth * 0.05;
    final double fontSizeSmall = screenWidth * 0.04;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF111113),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontal,
              vertical: paddingVertical,
            ),
            child: DefaultTextStyle(
              style: const TextStyle(color: Color(0xFFFFFFFF)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: paddingVertical * 0.8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF302F32),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: paddingHorizontal * 0.6,
                        vertical: paddingVertical * 0.6,
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: paddingHorizontal),
                            width: screenWidth * 0.3,
                            height: screenWidth * 0.3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.15),
                              color: const Color(0xFFCEC3FF),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/ellipse_95.png'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: screenHeight * 0.02),
                                  child: Text(
                                    'Jane Doe',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: fontSizeMedium,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: screenHeight * 0.02),
                                  child: Text(
                                    'idk some deets',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: fontSizeMedium,
                                    ),
                                  ),
                                ),
                                Text(
                                  'bruh more deets blah blah blah',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: fontSizeMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: fontSizeLarge,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.05),
                    child: Text(
                      'Hi Jane Doe, you can manage your details from here',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: fontSizeSmall,
                        color: const Color(0xFF6F6F6F),
                      ),
                    ),
                  ),
                  _buildSectionHeader(context, 'You', fontSizeSmall),
                  _buildProfileItem(context, 'Your Details',
                      'assets/vectors/details_icon.svg', fontSizeMedium),
                  _buildProfileItem(context, 'Contact',
                      'assets/vectors/contact_icon.svg', fontSizeMedium),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    child: Text(
                      'Application',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: fontSizeSmall,
                        color: const Color(0xFF6E6E6E),
                      ),
                    ),
                  ),
                  _buildProfileItem(context, 'Settings',
                      'assets/vectors/settings_icon.svg', fontSizeMedium),
                  _buildProfileItem(context, 'Privacy Policy',
                      'assets/vectors/privacy_policy_icon.svg', fontSizeMedium),
                  _buildProfileItem(context, 'Logout',
                      'assets/vectors/logout_icon.svg', fontSizeMedium),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(
      BuildContext context, String text, double fontSize) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          color: const Color(0xFF6E6E6E),
        ),
      ),
    );
  }

  Widget _buildProfileItem(
      BuildContext context, String text, String asset, double fontSize) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth * 0.08;

    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: screenWidth * 0.05),
            width: iconSize,
            height: iconSize,
            child: SvgPicture.asset(
              asset,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
