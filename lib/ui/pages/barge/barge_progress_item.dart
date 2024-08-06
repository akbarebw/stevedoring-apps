import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';

class BargeProgressItem extends StatelessWidget {
  final String name;
  final String arrivalTime;
  final String longSide;
  final String commenceLoading;
  final String castOff;
  final String cargoLHV;
  final String remarks;

  const BargeProgressItem({
    super.key,
    required this.name,
    required this.arrivalTime,
    required this.longSide,
    required this.commenceLoading,
    required this.castOff,
    required this.cargoLHV,
    required this.remarks,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: blackTextstyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 8),
            buildDetailRow(Icons.access_time, 'Arrival Time:', arrivalTime),
            buildDetailRow(Icons.swap_horiz, 'Long Side:', longSide),
            buildDetailRow(Icons.play_circle_outline, 'Commence Loading:',
                commenceLoading),
            buildDetailRow(Icons.exit_to_app, 'Cast Off:', castOff),
            buildDetailRow(Icons.local_shipping, 'Cargo LHV:', cargoLHV),
            buildDetailRow(Icons.comment, 'Remarks:', remarks),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 16, color: blueColor),
          const SizedBox(width: 8),
          Text(
            label,
            style: greyTextstyle.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            value,
            style: blackTextstyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
