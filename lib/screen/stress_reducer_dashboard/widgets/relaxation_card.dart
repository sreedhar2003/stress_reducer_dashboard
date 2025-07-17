import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';

class RelaxationCard extends StatelessWidget {
  final Widget checkbox;
  final String subject;
  final String time;
  final ontap;
  const RelaxationCard(
      {super.key,
      required this.checkbox,
      required this.subject,
      required this.time,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.maincontainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          checkbox,
          sizedBoxWithWidth(5),
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
          sizedBoxWithWidth(10),
          Text(
            time,
            style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 8.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          sizedBoxWithWidth(5),
          InkWell(
            onTap: ontap,
            child: Container(
              height: 25,
              width: 57,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(82),
                gradient: const LinearGradient(
                  colors: [AppColors.green, AppColors.lightgreen],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  "Start",
                  style: GoogleFonts.roboto(
                    color: AppColors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
