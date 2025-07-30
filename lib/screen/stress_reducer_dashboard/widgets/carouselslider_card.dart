import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';

class CarouselsliderCard extends StatelessWidget {
  final String iconimage;
  final String subject;
  final String datetime;
  const CarouselsliderCard(
      {super.key,
      required this.iconimage,
      required this.subject,
      required this.datetime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.maincontainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          children: [
            Image.asset(
              iconimage,
              height: 30,
              width: 30,
              fit: BoxFit.contain,
            ),
            sizedBoxWithWidth(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      subject,
                      maxLines: 2,
                      style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  sizedBoxWithHeight(5),
                  Text(
                    datetime,
                    style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
