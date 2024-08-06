import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/daily_report_card.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class DailyReportPage extends StatelessWidget {
  const DailyReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily Report',
          style: whiteTextstyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
            color: blackColor,
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // Search Field
          CustomFormField(
            title: 'Search',
            controller: TextEditingController(),
            isShowTitle: false,
            obscureText: false,
          ),
          const SizedBox(height: 16),

          // Label Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Today',
                  style: whiteTextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: whiteColor,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Last Week',
                  style: whiteTextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: blackColor,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Text(
                  'Etc',
                  style: whiteTextstyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: blackColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Recent Daily Reports
          Text(
            'Recent Daily Reports',
            style: blackTextstyle.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          const SizedBox(height: 16),
          DailyReportCard(
            title: 'Daily Report',
            subTitle: 'Subtitle Here',
            date: '2024-08-06',
            weather: 'Sunny',
            idle: false,
            startTime: '08:00',
            endTime: '17:00',
            noHatch: 'No Hatch',
            cargo: 1000,
            cargoBalance: 500,
            remark: 'Some remarks here',
            moreOptions: [
              MoreOption(
                label: 'Edit',
                icon: Icons.edit,
                onTap: () {
                  // Implement edit functionality
                },
              ),
              MoreOption(
                label: 'delete',
                icon: Icons.delete,
                onTap: () {
                  // Implement daily report functionality
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          DailyReportCard(
            title: 'Daily Report',
            subTitle: 'Subtitle Here',
            date: '2024-08-06',
            weather: 'Sunny',
            idle: false,
            startTime: '08:00',
            endTime: '17:00',
            noHatch: 'No Hatch',
            cargo: 1000,
            cargoBalance: 500,
            remark: 'Some remarks here',
            moreOptions: [
              MoreOption(
                label: 'Edit',
                icon: Icons.edit,
                onTap: () {
                  // Implement edit functionality
                },
              ),
              MoreOption(
                label: 'Delete',
                icon: Icons.delete,
                onTap: () {
                  // Implement daily report functionality
                },
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add-daily-report');
        },
        backgroundColor: blueColor,
        child: const Icon(Icons.add, size: 24, color: Colors.white),
      ),
    );
  }
}
