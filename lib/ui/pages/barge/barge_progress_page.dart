import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'barge_progress_item.dart';

class BargeProgressPage extends StatelessWidget {
  const BargeProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Barge Progress',
          style: whiteTextstyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: blueColor,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          BargeProgressItem(
            name: 'Barge XYZ',
            arrivalTime: '08:00 AM',
            longSide: 'Starboard',
            commenceLoading: '09:00 AM',
            castOff: '05:00 PM',
            cargoLHV: '50,000 LHV',
            remarks: 'No issues reported',
          ),
          BargeProgressItem(
            name: 'Barge ABC',
            arrivalTime: '10:00 AM',
            longSide: 'Port',
            commenceLoading: '11:00 AM',
            castOff: '07:00 PM',
            cargoLHV: '45,000 LHV',
            remarks: 'Minor delays',
          ),
          // Add more BargeProgressItem here
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: blueColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
