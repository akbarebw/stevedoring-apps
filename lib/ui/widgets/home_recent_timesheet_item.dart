import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';

class HomeRecentTimesheet extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String startLocation;
  final String endLocation;
  final String status;
  final List<MoreOption> moreOptions;

  const HomeRecentTimesheet({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.startLocation,
    required this.endLocation,
    required this.status,
    required this.moreOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: blackTextstyle.copyWith(
                    fontWeight: bold,
                    fontSize: 18,
                  ),
                ),
                IconMore(options: moreOptions),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: greyTextstyle.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16, color: greyColor),
                const SizedBox(width: 8),
                Text(date, style: blackTextstyle),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: greyColor),
                const SizedBox(width: 8),
                Expanded(child: Text(startLocation, style: blackTextstyle)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: greyColor),
                const SizedBox(width: 8),
                Expanded(child: Text(endLocation, style: blackTextstyle)),
              ],
            ),
            const SizedBox(height: 16),
            _buildStatusLabel(status),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusLabel(String status) {
    Color statusColor;
    switch (status.toLowerCase()) {
      case 'pending':
        statusColor = Colors.orange;
        break;
      case 'completed':
        statusColor = Colors.green;
        break;
      case 'cancelled':
        statusColor = Colors.red;
        break;
      default:
        statusColor = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: statusColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class IconMore extends StatelessWidget {
  final List<MoreOption> options;

  const IconMore({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    return PopupMenuTheme(
      data: PopupMenuThemeData(
        color: whiteColor,
        textStyle: TextStyle(color: blackColor),
      ),
      child: PopupMenuButton<MoreOption>(
        icon: const Icon(Icons.more_vert),
        onSelected: (MoreOption option) {
          option.onTap();
        },
        itemBuilder: (BuildContext context) {
          return options.map((MoreOption option) {
            return PopupMenuItem<MoreOption>(
              value: option,
              child: Row(
                children: [
                  Icon(option.icon, color: blackColor, size: 20),
                  const SizedBox(width: 8),
                  Text(option.label),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }
}

class MoreOption {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  MoreOption({
    required this.label,
    required this.icon,
    required this.onTap,
  });
}
