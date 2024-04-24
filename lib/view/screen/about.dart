import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:triton/core/constant/color.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0.0,
        title: Text(
          "About Us",
          style: TextStyle(color: AppColors.blue),
        ),
      ),
      body: Expanded(
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/svg/Group 21.svg",
              height: double.maxFinite,
              width: double.maxFinite,
            ),
            Text(
              "> Embark on an innovative journey with Triton\na fusion of state-of-the-art technology and\naquatic safety.",
              style: TextStyle(color: AppColors.white),
            ),
            Text(
              "> Driven by a commitment to protect lives,\nour project revolutionizes water safety through\nan automatic life jacket and an intuitive app.",
              style: TextStyle(color: AppColors.white),
            ),
            Text(
              ">  Beyond creating a product, we're shaping a \nshield against aquatic risks. Join us on this \ntransformative journey where technology \nseamlessly blends with tranquility.",
              style: TextStyle(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
