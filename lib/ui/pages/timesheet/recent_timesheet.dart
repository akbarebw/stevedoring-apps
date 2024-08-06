import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/home_recent_timesheet_item.dart';

class RecentTimesheets extends StatelessWidget {
  const RecentTimesheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Timesheets",
            style: blackTextstyle.copyWith(
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
          const SizedBox(height: 16),
          HomeRecentTimesheet(
            title: "Shipment A23",
            subtitle: "shipment xyz",
            date: "12 Jan 2024",
            startLocation: "samarinda",
            endLocation: "jakarta",
            status: "Pending",
            moreOptions: [
              MoreOption(
                label: "Detail",
                icon: Icons.details,
                onTap: () {
                  Navigator.pushNamed(context, '/detail-timesheet');
                },
              ),
              MoreOption(
                label: "Edit",
                icon: Icons.edit,
                onTap: () {
                  Navigator.pushNamed(context, '/edit-timesheet');
                },
              ),
              MoreOption(
                label: "Daily Report",
                icon: Icons.report,
                onTap: () {
                  // Navigate to daily report page
                },
              ),
              MoreOption(
                label: "Barge Progress",
                icon: Icons.directions_boat,
                onTap: () {
                  // Navigate to barge progress page
                },
              ),
            ],
          ),
          HomeRecentTimesheet(
            title: "Shipment B45",
            subtitle: "shipment abc",
            date: "15 Jan 2024",
            startLocation: "surabaya",
            endLocation: "batam",
            status: "Completed",
            moreOptions: [
              MoreOption(
                label: "Detail",
                icon: Icons.details,
                onTap: () {
                  Navigator.pushNamed(context, '/detail-timesheet');
                },
              ),
              MoreOption(
                label: "Edit",
                icon: Icons.edit,
                onTap: () {
                  Navigator.pushNamed(context, '/edit-timesheet');
                },
              ),
              MoreOption(
                label: "Daily Report",
                icon: Icons.report,
                onTap: () {
                  // Navigate to daily report page
                },
              ),
              MoreOption(
                label: "Barge Progress",
                icon: Icons.directions_boat,
                onTap: () {
                  // Navigate to barge progress page
                },
              ),
            ],
          ),
          // Add more timesheet items here
        ],
      ),
    );
  }
}
