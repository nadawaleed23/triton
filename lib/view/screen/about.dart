import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
      body:Stack(alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/Group 21.svg",
              height: double.maxFinite,
              width: double.maxFinite,
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [Gap(80),
                  Text(
                  "> Embark on an innovative journey with Triton a fusion of state-of-the-art technology and aquatic safety.",
                  style: TextStyle(color: AppColors.white),
                ),
                  Gap(10),
                  Text(
                    "> Driven by a commitment to protect lives,our project revolutionizes water safety through an automatic life jacket and an intuitive app.",
                    style: TextStyle(color: AppColors.white),
                  ),
                  Gap(10),
                  Text(
                    ">  Beyond creating a product, we're shaping a shield against aquatic risks. Join us on this transformative journey where technology seamlessly blends with tranquility.",
                    style: TextStyle(color: AppColors.white),
                  )],),
              ),
            )
          ],
        ),

    );
  }
}
