import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';

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
        icon: Icon(Icons.more_vert, color: blackColor),
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

class DailyReportCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String date;
  final String weather;
  final bool idle;
  final String startTime;
  final String endTime;
  final String noHatch;
  final int cargo;
  final int cargoBalance;
  final String remark;
  final List<MoreOption> moreOptions;

  const DailyReportCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.weather,
    required this.idle,
    required this.startTime,
    required this.endTime,
    required this.noHatch,
    required this.cargo,
    required this.cargoBalance,
    required this.remark,
    required this.moreOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Subtitle
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextstyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: greyTextstyle.copyWith(fontSize: 14),
                  ),
                ],
              ),
              IconMore(options: moreOptions),
            ],
          ),
          const SizedBox(height: 8),

          // Date and Weather
          Row(
            children: [
              Icon(Icons.calendar_today, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                date,
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
              const SizedBox(width: 16),
              Icon(
                weatherIcon(weather),
                size: 14,
                color: greyColor,
              ),
              const SizedBox(width: 4),
              Text(
                weather,
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Start Time and End Time
          Row(
            children: [
              Icon(Icons.access_time, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'Start: $startTime',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
              const SizedBox(width: 16),
              Icon(Icons.access_time, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'End: $endTime',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // No Hatch
          Row(
            children: [
              Icon(Icons.block, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'No Hatch: $noHatch',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Cargo and Cargo Balance
          Row(
            children: [
              Icon(Icons.local_shipping, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'Cargo: $cargo',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
              const SizedBox(width: 16),
              Icon(Icons.balance, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'Balance: $cargoBalance',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Remark
          Row(
            children: [
              Icon(Icons.comment, size: 14, color: greyColor),
              const SizedBox(width: 4),
              Text(
                'Remark: $remark',
                style: greyTextstyle.copyWith(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconData weatherIcon(String weather) {
    switch (weather.toLowerCase()) {
      case 'sunny':
        return Icons.wb_sunny;
      case 'rainy':
        return Icons.grain;
      case 'cloudy':
        return Icons.wb_cloudy;
      case 'snowy':
        return Icons.ac_unit;
      case 'partly cloudy':
        return Icons.wb_cloudy;
      case 'windy':
        return Icons.toys;
      case 'storms':
        return Icons.flash_on;
      default:
        return Icons.wb_sunny;
    }
  }
}
