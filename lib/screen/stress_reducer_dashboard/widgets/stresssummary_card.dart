import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';

class StresssummaryCard extends StatelessWidget {
  final String rating;
  final String subject;
  const StresssummaryCard(
      {super.key, required this.rating, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: 145,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.containercolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.smallcontainercolor)),
      child: Column(
        children: [
          Text(
            rating,
            style: GoogleFonts.roboto(
              color: AppColors.green,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          sizedBoxWithHeight(10),
          Expanded(
            child: Text(
              subject,
              style: GoogleFonts.roboto(
                color: AppColors.green,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
