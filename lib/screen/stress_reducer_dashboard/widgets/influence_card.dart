import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';

class InfluenceCard extends StatelessWidget {
  final IconData icon;
  final String subject;
  final String rating;
  const InfluenceCard(
      {super.key,
      required this.icon,
      required this.subject,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 42,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.maincontainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: AppColors.green,
            ),
            sizedBoxWithWidth(5),
            Text(
              subject,
              style: GoogleFonts.roboto(
                color: AppColors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Text(
              rating,
              style: GoogleFonts.roboto(
                color: AppColors.green,
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
