import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class AddTimesheetPage extends StatefulWidget {
  const AddTimesheetPage({super.key});

  @override
  State<AddTimesheetPage> createState() => _AddTimesheetPageState();
}

class _AddTimesheetPageState extends State<AddTimesheetPage> {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController arrivedController = TextEditingController();
  final TextEditingController droppedAnchorController = TextEditingController();
  final TextEditingController freePracticeController = TextEditingController();
  final TextEditingController commencedLoadingController =
      TextEditingController();
  final TextEditingController norTenderController = TextEditingController();
  final TextEditingController norAcceptedController = TextEditingController();
  final TextEditingController cargoQuantityController = TextEditingController();

  String? selectedType;
  String? selectedVesselCategory;
  String? selectedShipper;
  String? selectedMotherVessel;
  String? selectedPortDestination;
  String? selectedPortLoading;

  List<String> typeOptions = ['Type 1', 'Type 2', 'Type 3'];
  List<String> vesselCategoryOptions = [
    'Category 1',
    'Category 2',
    'Category 3'
  ];
  List<String> shipperOptions = ['Shipper 1', 'Shipper 2', 'Shipper 3'];
  List<String> motherVesselOptions = ['Vessel 1', 'Vessel 2', 'Vessel 3'];
  List<String> portDestinationOptions = ['Port 1', 'Port 2', 'Port 3'];
  List<String> portLoadingOptions = ['Port A', 'Port B', 'Port C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Timesheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            // Basic Information Section
            Text(
              'Basic Information',
              style: blackTextstyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Type',
              options: typeOptions,
              selectedValue: selectedType,
              onChanged: (value) {
                setState(() {
                  selectedType = value;
                });
              },
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Vessel Category',
              options: vesselCategoryOptions,
              selectedValue: selectedVesselCategory,
              onChanged: (value) {
                setState(() {
                  selectedVesselCategory = value;
                });
              },
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Shipper',
              options: shipperOptions,
              selectedValue: selectedShipper,
              onChanged: (value) {
                setState(() {
                  selectedShipper = value;
                });
              },
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Mother Vessel',
              options: motherVesselOptions,
              selectedValue: selectedMotherVessel,
              onChanged: (value) {
                setState(() {
                  selectedMotherVessel = value;
                });
              },
            ),
            const SizedBox(height: 16),
            CustomFormField(
              title: 'Description',
              controller: descriptionController,
            ),
            const SizedBox(height: 32),

            // Location Information Section
            Text(
              'Location Information',
              style: blackTextstyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Port Destination',
              options: portDestinationOptions,
              selectedValue: selectedPortDestination,
              onChanged: (value) {
                setState(() {
                  selectedPortDestination = value;
                });
              },
            ),
            const SizedBox(height: 16),
            SelectFormField(
              label: 'Port of Loading',
              options: portLoadingOptions,
              selectedValue: selectedPortLoading,
              onChanged: (value) {
                setState(() {
                  selectedPortLoading = value;
                });
              },
            ),
            const SizedBox(height: 32),

            // Time and Date Information Section
            Text(
              'Time and Date Information',
              style: blackTextstyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Arrived',
              controller: arrivedController,
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Dropped Anchor',
              controller: droppedAnchorController,
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Free Practice Granted',
              controller: freePracticeController,
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Commenced Loading',
              controller: commencedLoadingController,
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Nor Tender',
              controller: norTenderController,
            ),
            const SizedBox(height: 16),
            DateTimePickerFormField(
              label: 'Nor Accepted',
              controller: norAcceptedController,
            ),
            const SizedBox(height: 32),

            // Cargo Information Section
            Text(
              'Cargo Information',
              style: blackTextstyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            const SizedBox(height: 16),
            CustomFormField(
              title: 'Quantity of Cargo',
              controller: cargoQuantityController,
            ),
            const SizedBox(height: 32),

            const SizedBox(height: 20),
            CustomFilledButton(
              title: 'Save Timesheet',
              onPressed: () {
                // Logic untuk menyimpan timesheet
              },
            ),
            const SizedBox(height: 12),
            CustomTextButton(
              title: 'Cancel',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
