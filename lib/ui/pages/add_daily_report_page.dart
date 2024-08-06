import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class AddDailyReportPage extends StatefulWidget {
  const AddDailyReportPage({super.key});

  @override
  State<AddDailyReportPage> createState() => _AddDailyReportPageState();
}

class _AddDailyReportPageState extends State<AddDailyReportPage> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  final TextEditingController noHatchController = TextEditingController();
  final TextEditingController cargoController = TextEditingController();
  final TextEditingController cargoBalanceController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();

  bool isIdle = false;
  String? selectedWeather;

  List<String> weatherOptions = [
    'Sunny',
    'Rainy',
    'Cloudy',
    'Snowy',
    'Partly Cloudy',
    'Windy',
    'Storms'
  ];
  List<IconData> weatherIcons = [
    Icons.wb_sunny,
    Icons.beach_access,
    Icons.wb_cloudy,
    Icons.ac_unit,
    Icons.cloud,
    Icons.toys,
    Icons.flash_on
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Daily Report',
          style: whiteTextstyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
            color: blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            // Date
            DateTimePickerFormField(
              label: 'Date',
              controller: dateController,
            ),
            const SizedBox(height: 16),

            // Weather
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Weather',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              value: selectedWeather,
              items: List.generate(
                weatherOptions.length,
                (index) => DropdownMenuItem<String>(
                  value: weatherOptions[index],
                  child: Row(
                    children: [
                      Icon(weatherIcons[index], color: blueColor),
                      const SizedBox(width: 8),
                      Text(weatherOptions[index]),
                    ],
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  selectedWeather = value;
                });
              },
            ),
            const SizedBox(height: 16),

            // Idle
            CheckboxListTile(
              title: Text('Idle', style: blackTextstyle),
              value: isIdle,
              onChanged: (value) {
                setState(() {
                  isIdle = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: blueColor,
              checkColor: Colors.white,
            ),
            const SizedBox(height: 16),

            // Start Time
            DateTimePickerFormField(
              label: 'Start Time',
              controller: startTimeController,
            ),
            const SizedBox(height: 16),

            // End Time
            DateTimePickerFormField(
              label: 'End Time',
              controller: endTimeController,
            ),
            const SizedBox(height: 16),

            // No Hatch
            CustomFormField(
              title: 'No Hatch',
              controller: noHatchController,
            ),
            const SizedBox(height: 16),

            // Cargo
            CustomFormField(
              title: 'Cargo',
              controller: cargoController,
            ),
            const SizedBox(height: 16),

            // Cargo Balance
            CustomFormField(
              title: 'Cargo Balance',
              controller: cargoBalanceController,
            ),
            const SizedBox(height: 16),

            // Remark
            CustomFormField(
              title: 'Remark',
              controller: remarkController,
            ),
            const SizedBox(height: 32),

            // Save Button
            CustomFilledButton(
              title: 'Save Daily Report',
              onPressed: () {
                // Logic untuk menyimpan daily report
              },
            ),
            const SizedBox(height: 12),

            // Cancel Button
            CustomTextButton(
              title: 'Cancel',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
