import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';

class DetailTimesheetPage extends StatelessWidget {
  const DetailTimesheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Timesheet Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(
              context: context,
              title: 'Basic Information',
              onPressed: () {
                Navigator.pushNamed(context, '/edit-timesheet');
              },
            ),
            _buildDetailCard(
              icon: Icons.category,
              title: 'Type',
              subtitle: 'Cargo',
            ),
            _buildDetailCard(
              icon: Icons.local_shipping,
              title: 'Vessel Category',
              subtitle: 'Bulk Carrier',
            ),
            _buildDetailCard(
              icon: Icons.business,
              title: 'Shipper',
              subtitle: 'ABC Shipping Co.',
            ),
            _buildDetailCard(
              icon: Icons.directions_boat,
              title: 'Mother Vessel',
              subtitle: 'MV Oceanic',
            ),
            _buildDetailCard(
              icon: Icons.description,
              title: 'Description',
              subtitle: 'General cargo description goes here.',
            ),
            _buildSectionTitle(
              context: context,
              title: 'Location Information',
            ),
            _buildDetailCard(
              icon: Icons.place,
              title: 'Port Destination',
              subtitle: 'Port of Singapore',
            ),
            _buildDetailCard(
              icon: Icons.location_on,
              title: 'Port of Loading',
              subtitle: 'Port of Los Angeles',
            ),
            _buildSectionTitle(
              context: context,
              title: 'Time and Date Information',
            ),
            _buildDetailCard(
              icon: Icons.access_time,
              title: 'Arrived',
              subtitle: '21 March 2024 | 13:03 PM',
            ),
            _buildDetailCard(
              icon: Icons.anchor,
              title: 'Dropped Anchor',
              subtitle: '21 March 2024 | 14:00 PM',
            ),
            _buildDetailCard(
              icon: Icons.check_circle,
              title: 'Free Practice Granted',
              subtitle: '22 March 2024 | 10:00 AM',
            ),
            _buildDetailCard(
              icon: Icons.work,
              title: 'Commenced Loading',
              subtitle: '23 March 2024 | 08:00 AM',
            ),
            _buildDetailCard(
              icon: Icons.file_copy,
              title: 'Nor Tender',
              subtitle: '24 March 2024 | 09:00 AM',
            ),
            _buildDetailCard(
              icon: Icons.check,
              title: 'Nor Accepted',
              subtitle: '25 March 2024 | 11:00 AM',
            ),
            _buildSectionTitle(
              context: context,
              title: 'Cargo Information',
            ),
            _buildDetailCard(
              icon: Icons.line_weight,
              title: 'Quantity of Cargo',
              subtitle: '5000 MT',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle({
    required BuildContext context,
    required String title,
    VoidCallback? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (onPressed != null)
            TextButton(
              onPressed: onPressed,
              child: Text(
                'Change Detail',
                style: TextStyle(
                  color: blueColor,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDetailCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: blueColor),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
