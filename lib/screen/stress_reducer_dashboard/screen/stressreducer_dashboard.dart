// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
// import 'package:stress_reducer_dashboard/helpers/screen_config.dart';
// import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
// import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';
// import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/controller/stressreducer_dashboard_controller.dart';
// import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/carouselslider_card.dart';
// import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/stresssummary_card.dart';

// class StressReducerDashboard extends StatefulWidget {
//   const StressReducerDashboard({super.key});

//   @override
//   State<StressReducerDashboard> createState() => _StressReducerDashboardState();
// }

// class _StressReducerDashboardState extends State<StressReducerDashboard> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = context.watch<StressreducerDashboardController>();
//     ScreenUtil.getInstance().init(context);
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Stress Overview Dashboard",
//                   style: GoogleFonts.roboto(
//                     color: AppColors.headingcolor,
//                     fontSize: 20.sp,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 sizedBoxWithHeight(20),
//                 Container(
//                   height: 48,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     border: Border.all(color: Colors.green),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     children: List.generate(provider.options.length, (index) {
//                       final isSelected = provider.selectedIndex == index;

//                       return Expanded(
//                         child: GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               provider.selectedIndex = index;
//                             });
//                           },
//                           child: AnimatedContainer(
//                             duration: const Duration(milliseconds: 200),
//                             decoration: BoxDecoration(
//                               color: isSelected
//                                   ? AppColors.green
//                                   : AppColors.white,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             alignment: Alignment.center,
//                             child: Text(
//                               provider.options[index],
//                               style: GoogleFonts.roboto(
//                                 color: isSelected
//                                     ? AppColors.white
//                                     : AppColors.black,
//                                 fontSize: 15.sp,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//                   ),
//                 ),
//                 sizedBoxWithHeight(20),
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.2),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Connected Devices & Data Sources",
//                         maxLines: 2,
//                         style: GoogleFonts.roboto(
//                           color: AppColors.black,
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       sizedBoxWithHeight(10),
//                       Container(
//                         height: 37,
//                         width: 122,
//                         padding: const EdgeInsets.symmetric(horizontal: 10),
//                         decoration: BoxDecoration(
//                           color: AppColors.smallcontainercolor,
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         child: Row(
//                           children: [
//                             const Icon(Icons.apple,
//                                 size: 20, color: AppColors.black),
//                             sizedBoxWithWidth(5),
//                             Text(
//                               "Apple Health",
//                               style: GoogleFonts.roboto(
//                                 color: AppColors.black,
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       sizedBoxWithHeight(10),
//                       Text(
//                         "Synced at 9:30 AM via Apple Health",
//                         maxLines: 2,
//                         style: GoogleFonts.roboto(
//                           color: AppColors.black,
//                           fontSize: 14.sp,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       sizedBoxWithHeight(10),
//                       Text(
//                         "Tracked Inputs:",
//                         style: GoogleFonts.roboto(
//                           color: AppColors.black,
//                           fontSize: 15.sp,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       sizedBoxWithHeight(10),
//                       Row(
//                           children: List.generate(
//                         provider.trackedoption.length,
//                         (index) => Padding(
//                           padding: const EdgeInsets.only(right: 20),
//                           child: Container(
//                             height: 30,
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             decoration: BoxDecoration(
//                               color: AppColors.smallcontainercolor,
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 provider.trackedoption[index],
//                                 style: GoogleFonts.roboto(
//                                   color: AppColors.green,
//                                   fontSize: 12.sp,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ))
//                     ],
//                   ),
//                 ),
//                 sizedBoxWithHeight(20),
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.2),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Stress Summary",
//                         style: GoogleFonts.roboto(
//                           color: AppColors.black,
//                           fontSize: 16.sp,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       sizedBoxWithHeight(10),
//                       const Row(
//                         children: [
//                           StresssummaryCard(
//                               rating: "55 ms", subject: "HRV Average"),
//                           Spacer(),
//                           StresssummaryCard(
//                               rating: "62 bpm", subject: "Resting Heart Rate"),
//                         ],
//                       ),
//                       sizedBoxWithHeight(10),
//                       const Row(
//                         children: [
//                           StresssummaryCard(
//                               rating: "Stable", subject: "Mood Trends"),
//                           Spacer(),
//                           StresssummaryCard(
//                               rating: "3 Events",
//                               subject: "Stress Events Detected"),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//                 sizedBoxWithHeight(20),
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.2),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Stress Trend",
//                           style: GoogleFonts.roboto(
//                             color: AppColors.black,
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         sizedBoxWithHeight(10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Container(
//                               width: 18,
//                               height: 8,
//                               decoration: BoxDecoration(
//                                   color: AppColors.smallcontainercolor,
//                                   border: Border.all(color: AppColors.green)),
//                             ),
//                             sizedBoxWithWidth(5),
//                             Text(
//                               "HRV (ms)",
//                               style: GoogleFonts.roboto(
//                                 color: AppColors.grey,
//                                 fontSize: 8.sp,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             sizedBoxWithWidth(10),
//                             Container(
//                               width: 18,
//                               height: 8,
//                               decoration: BoxDecoration(
//                                   color: AppColors.redcontainercolor,
//                                   border: Border.all(color: AppColors.red)),
//                             ),
//                             sizedBoxWithWidth(5),
//                             Text(
//                               "Stress Level (0-10)",
//                               style: GoogleFonts.roboto(
//                                 color: AppColors.grey,
//                                 fontSize: 8.sp,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             )
//                           ],
//                         ),
//                         sizedBoxWithHeight(10),
//                         //graph
//                         SizedBox(
//                           height: 200,
//                           child: LineChart(
//                             LineChartData(
//                               titlesData: FlTitlesData(
//                                 bottomTitles: AxisTitles(
//                                   sideTitles: SideTitles(
//                                     showTitles: true,
//                                     getTitlesWidget: (value, meta) {
//                                       const days = [
//                                         'Mon',
//                                         'Tue',
//                                         'Wed',
//                                         'Thu',
//                                         'Fri',
//                                         'Sat',
//                                         'Sun'
//                                       ];
//                                       return Text(
//                                         days[value.toInt()],
//                                         style: GoogleFonts.roboto(
//                                           color: AppColors.grey,
//                                           fontSize: 8.sp,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       );
//                                     },
//                                     interval: 1,
//                                     reservedSize: 32,
//                                   ),
//                                 ),
//                                 leftTitles: const AxisTitles(
//                                   sideTitles: SideTitles(
//                                       showTitles: true, reservedSize: 40),
//                                 ),
//                                 topTitles: const AxisTitles(
//                                     sideTitles: SideTitles(showTitles: false)),
//                                 rightTitles: const AxisTitles(
//                                     sideTitles: SideTitles(showTitles: false)),
//                               ),
//                               gridData: const FlGridData(show: true),
//                               borderData: FlBorderData(show: false),
//                               minX: 0,
//                               maxX: 6,
//                               minY: 0,
//                               maxY: 80,
//                               lineBarsData: [
//                                 LineChartBarData(
//                                   isCurved: true,
//                                   color: AppColors.green,
//                                   barWidth: 3,
//                                   dotData: FlDotData(show: true),
//                                   belowBarData: BarAreaData(
//                                     show: true,
//                                     color: AppColors.containercolor,
//                                   ),
//                                   spots: const [
//                                     FlSpot(0, 50),
//                                     FlSpot(1, 55),
//                                     FlSpot(2, 52),
//                                     FlSpot(3, 60),
//                                     FlSpot(4, 53),
//                                     FlSpot(5, 58),
//                                     FlSpot(6, 66),
//                                   ],
//                                 ),
//                                 LineChartBarData(
//                                   isCurved: true,
//                                   color: AppColors.red,
//                                   barWidth: 2,
//                                   dotData: FlDotData(show: true),
//                                   belowBarData: BarAreaData(
//                                       show: true,
//                                       color: AppColors.redcontainercolor),
//                                   spots: const [
//                                     FlSpot(0, 5),
//                                     FlSpot(1, 5),
//                                     FlSpot(2, 6),
//                                     FlSpot(3, 5),
//                                     FlSpot(4, 6),
//                                     FlSpot(5, 5),
//                                     FlSpot(6, 4),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ]),
//                 ),
//                 sizedBoxWithHeight(20),
//                 sizedBoxWithHeight(20),
//                 Container(
//                   padding: const EdgeInsets.all(10),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.2),
//                         spreadRadius: 2,
//                         blurRadius: 8,
//                         offset: const Offset(0, 4),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "All Insights & Alert",
//                           style: GoogleFonts.roboto(
//                             color: AppColors.black,
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         sizedBoxWithHeight(10),
//                         CarouselSlider(
//                             carouselController: provider.carouselController,
//                             options: CarouselOptions(
//                               height: 200.0,
//                               aspectRatio: 16 / 9,
//                               viewportFraction: 0.8,
//                               initialPage: 0,
//                               enableInfiniteScroll: true,
//                               reverse: true,
//                               autoPlay: false,
//                               // autoPlayInterval: Duration(seconds: 2),
//                               // autoPlayAnimationDuration:
//                               //     Duration(milliseconds: 800),
//                               // autoPlayCurve: Curves.fastOutSlowIn,
//                               onPageChanged: (index, reason) {
//                                 setState(() {
//                                   provider.currentIndex = index;
//                                 });
//                               },
//                               scrollDirection: Axis.horizontal,
//                             ),
//                             items: [
//                               CarouselsliderCard(
//                                   icon: Icons.nightlight_sharp,
//                                   subject:
//                                       "HRV dipped 15% post late-night screen usage",
//                                   datetime: "2025-07-10, 11:45 PM"),
//                               CarouselsliderCard(
//                                   icon: Icons.work_rounded,
//                                   subject:
//                                       "Stress spike detected after 3+ hrs of continuous work",
//                                   datetime: "2025-07-11, 03:00 PM"),
//                               CarouselsliderCard(
//                                   icon: Icons.sunny,
//                                   subject:
//                                       "Improved HRV observed with increased outdoor time.",
//                                   datetime: "2025-07-09, 09:00 AM"),
//                             ]),
//                         sizedBoxWithHeight(10),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: List.generate(3, (index) {
//                             return Container(
//                               width: 8,
//                               height: 8,
//                               margin: const EdgeInsets.symmetric(horizontal: 4),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: provider.currentIndex == index
//                                     ? AppColors.green
//                                     : AppColors.grey,
//                               ),
//                             );
//                           }),
//                         ),
//                       ]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:card_swiper/card_swiper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:stress_reducer_dashboard/helpers/appcolors.dart';
import 'package:stress_reducer_dashboard/helpers/screen_config.dart';
import 'package:stress_reducer_dashboard/helpers/size_extensions.dart';
import 'package:stress_reducer_dashboard/helpers/sizedbox.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/controller/stressreducer_dashboard_controller.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/carouselslider_card.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/influence_card.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/relaxation_card.dart';
import 'package:stress_reducer_dashboard/screen/stress_reducer_dashboard/widgets/stresssummary_card.dart';

class StressReducerDashboard extends StatefulWidget {
  const StressReducerDashboard({super.key});

  @override
  State<StressReducerDashboard> createState() => _StressReducerDashboardState();
}

class _StressReducerDashboardState extends State<StressReducerDashboard> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<StressreducerDashboardController>();
    ScreenUtil.getInstance().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Stress Overview Dashboard",
                  style: GoogleFonts.roboto(
                    color: AppColors.headingcolor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                sizedBoxWithHeight(20),
                Container(
                  height: 48,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: List.generate(provider.options.length, (index) {
                      final isSelected = provider.selectedIndex == index;

                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              provider.selectedIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.green
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              provider.options[index],
                              style: GoogleFonts.roboto(
                                color: isSelected
                                    ? AppColors.white
                                    : AppColors.black,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connected Devices & Data Sources",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Container(
                        height: 37,
                        width: 150,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: AppColors.smallcontainercolor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const Icon(Icons.apple,
                                  size: 20, color: AppColors.black),
                              sizedBoxWithWidth(5),
                              Text(
                                "Apple Health",
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text(
                        "Synced at 9:30 AM via Apple Health",
                        maxLines: 2,
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Text(
                        "Tracked Inputs:",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      Row(
                          children: List.generate(
                        provider.trackedoption.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: AppColors.smallcontainercolor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                provider.trackedoption[index],
                                style: GoogleFonts.roboto(
                                  color: AppColors.green,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Stress Summary",
                        style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      sizedBoxWithHeight(10),
                      const Row(
                        children: [
                          StresssummaryCard(
                              rating: "55 ms", subject: "HRV Average"),
                          Spacer(),
                          StresssummaryCard(
                              rating: "62 bpm", subject: "Resting Heart Rate"),
                        ],
                      ),
                      sizedBoxWithHeight(10),
                      const Row(
                        children: [
                          StresssummaryCard(
                              rating: "Stable", subject: "Mood Trends"),
                          Spacer(),
                          StresssummaryCard(
                              rating: "3 Events",
                              subject: "Stress Events Detected"),
                        ],
                      )
                    ],
                  ),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stress Trend",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 18,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: AppColors.smallcontainercolor,
                                  border: Border.all(color: AppColors.green)),
                            ),
                            sizedBoxWithWidth(5),
                            Text(
                              "HRV (ms)",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            sizedBoxWithWidth(10),
                            Container(
                              width: 18,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: AppColors.redcontainercolor,
                                  border: Border.all(color: AppColors.red)),
                            ),
                            sizedBoxWithWidth(5),
                            Text(
                              "Stress Level (0-10)",
                              style: GoogleFonts.roboto(
                                color: AppColors.grey,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        sizedBoxWithHeight(10),
                        //graph
                        SizedBox(
                          height: 200,
                          child: LineChart(
                            LineChartData(
                              titlesData: FlTitlesData(
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    getTitlesWidget: (value, meta) {
                                      const days = [
                                        'Mon',
                                        'Tue',
                                        'Wed',
                                        'Thu',
                                        'Fri',
                                        'Sat',
                                        'Sun'
                                      ];
                                      return Text(
                                        days[value.toInt()],
                                        style: GoogleFonts.roboto(
                                          color: AppColors.grey,
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      );
                                    },
                                    interval: 1,
                                    reservedSize: 32,
                                  ),
                                ),
                                leftTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: true, reservedSize: 40),
                                ),
                                topTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                rightTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                              ),
                              gridData: const FlGridData(show: true),
                              borderData: FlBorderData(show: false),
                              minX: 0,
                              maxX: 6,
                              minY: 0,
                              maxY: 80,
                              lineBarsData: [
                                LineChartBarData(
                                  isCurved: true,
                                  color: AppColors.green,
                                  barWidth: 3,
                                  dotData: FlDotData(show: true),
                                  belowBarData: BarAreaData(
                                    show: true,
                                    color: AppColors.containercolor,
                                  ),
                                  spots: const [
                                    FlSpot(0, 50),
                                    FlSpot(1, 55),
                                    FlSpot(2, 52),
                                    FlSpot(3, 60),
                                    FlSpot(4, 53),
                                    FlSpot(5, 58),
                                    FlSpot(6, 66),
                                  ],
                                ),
                                LineChartBarData(
                                  isCurved: true,
                                  color: AppColors.red,
                                  barWidth: 2,
                                  dotData: FlDotData(show: true),
                                  belowBarData: BarAreaData(
                                      show: true,
                                      color: AppColors.redcontainercolor),
                                  spots: const [
                                    FlSpot(0, 5),
                                    FlSpot(1, 5),
                                    FlSpot(2, 6),
                                    FlSpot(3, 5),
                                    FlSpot(4, 6),
                                    FlSpot(5, 5),
                                    FlSpot(6, 4),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Insights & Alert",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        SizedBox(
                          height: 88,
                          width: double.infinity,
                          child: Swiper(
                            controller: provider.swiperController,
                            itemCount: 3,
                            viewportFraction: 0.8,
                            scale: 0.9,
                            onIndexChanged: (index) {
                              setState(() {
                                provider.currentIndex = index;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final items = [
                                const CarouselsliderCard(
                                    icon: Icons.nightlight_sharp,
                                    subject:
                                        "HRV dipped 15% post late-night screen usage",
                                    datetime: "2025-07-10, 11:45 PM"),
                                const CarouselsliderCard(
                                    icon: Icons.work_rounded,
                                    subject:
                                        "Stress spike detected after 3+ hrs of continuous work",
                                    datetime: "2025-07-11, 03:00 PM"),
                                const CarouselsliderCard(
                                    icon: Icons.sunny,
                                    subject:
                                        "Improved HRV observed with increased outdoor time.",
                                    datetime: "2025-07-09, 09:00 AM"),
                              ];
                              return items[index];
                            },
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            return Container(
                              width: 8,
                              height: 8,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: provider.currentIndex == index
                                    ? AppColors.green
                                    : AppColors.grey,
                              ),
                            );
                          }),
                        ),
                      ]),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personalized Relaxation Plan",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(20),
                        RelaxationCard(
                            checkbox: Checkbox(
                              value: provider.isChecked1,
                              activeColor: AppColors.green,
                              checkColor: AppColors.white,
                              onChanged: (value) {
                                setState(() {
                                  provider.isChecked1 = value!;
                                });
                              },
                            ),
                            subject: "Guided breathing exercise",
                            time: "5 min",
                            ontap: () {}),
                        sizedBoxWithHeight(10),
                        RelaxationCard(
                            checkbox: Checkbox(
                              value: provider.isChecked2,
                              activeColor: AppColors.green,
                              checkColor: AppColors.white,
                              onChanged: (value) {
                                setState(() {
                                  provider.isChecked2 = value!;
                                });
                              },
                            ),
                            subject: "Mindfulness audio session",
                            time: "10 min",
                            ontap: () {}),
                        sizedBoxWithHeight(10),
                        RelaxationCard(
                            checkbox: Checkbox(
                              value: provider.isChecked3,
                              activeColor: AppColors.green,
                              checkColor: AppColors.white,
                              onChanged: (value) {
                                setState(() {
                                  provider.isChecked3 = value!;
                                });
                              },
                            ),
                            subject: "Light stretch recommendation",
                            time: "3 min",
                            ontap: () {}),
                      ]),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Environment Influence",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(15),
                        Column(
                          children: List.generate(
                            provider.influencelist.length,
                            (index) => InfluenceCard(
                                icon: provider.influencelist[index]["icon"],
                                subject: provider.influencelist[index]
                                    ["subject"],
                                rating: provider.influencelist[index]
                                    ["rating"]),
                          ),
                        ),
                        sizedBoxWithHeight(15),
                        Text(
                          "Insights:",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        Row(
                          children: [
                            const Icon(
                              Icons.fiber_manual_record,
                              color: AppColors.black,
                              size: 10,
                            ),
                            sizedBoxWithWidth(5),
                            Expanded(
                              child: Text(
                                "Optimal light levels detected, promoting calm.",
                                maxLines: 2,
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        sizedBoxWithHeight(10),
                        Row(
                          children: [
                            const Icon(
                              Icons.fiber_manual_record,
                              size: 10,
                              color: AppColors.black,
                            ),
                            sizedBoxWithWidth(5),
                            Expanded(
                              child: Text(
                                "Low noise environment conducive to relaxation.",
                                maxLines: 2,
                                style: GoogleFonts.roboto(
                                  color: AppColors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                sizedBoxWithHeight(20),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stress Resilience Score",
                          style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        sizedBoxWithHeight(15),
                        Center(
                          child: CircularPercentIndicator(
                            radius: 50.0,
                            lineWidth: 8.0,
                            percent: 0.85,
                            animation: true,
                            animationDuration: 1200,
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "85",
                                  style: GoogleFonts.roboto(
                                    color: AppColors.green,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "/100",
                                  style: GoogleFonts.roboto(
                                    color: AppColors.green,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            progressColor: AppColors.green,
                            backgroundColor: AppColors.grey,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        Center(
                          child: Text(
                            "Combines HRV, sleep quality, activity, and mood inputs.",
                            maxLines: 2,
                            style: GoogleFonts.roboto(
                              color: AppColors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        sizedBoxWithHeight(10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 45,
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
                                "How is this Calculated",
                                style: GoogleFonts.roboto(
                                  color: AppColors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
