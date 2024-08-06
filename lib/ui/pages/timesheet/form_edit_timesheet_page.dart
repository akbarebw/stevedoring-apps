import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/button.dart';
import 'package:stevedoring/ui/widgets/forms.dart';

class EditTimesheetPage extends StatefulWidget {
  const EditTimesheetPage({super.key});

  @override
  State<EditTimesheetPage> createState() => _EditTimesheetPageState();
}

class _EditTimesheetPageState extends State<EditTimesheetPage> {
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
  void initState() {
    super.initState();
    // Load existing timesheet data into the form fields
    // Example data loading:
    selectedType = 'Type 1'; // Load from data source
    selectedVesselCategory = 'Category 1'; // Load from data source
    selectedShipper = 'Shipper 1'; // Load from data source
    selectedMotherVessel = 'Vessel 1'; // Load from data source
    selectedPortDestination = 'Port 1'; // Load from data source
    selectedPortLoading = 'Port A'; // Load from data source
    descriptionController.text = 'Sample description'; // Load from data source
    arrivedController.text =
        '21 March 2024 | 13:03 PM'; // Load from data source
    droppedAnchorController.text =
        '21 March 2024 | 14:00 PM'; // Load from data source
    freePracticeController.text =
        '22 March 2024 | 10:00 AM'; // Load from data source
    commencedLoadingController.text =
        '23 March 2024 | 08:00 AM'; // Load from data source
    norTenderController.text =
        '24 March 2024 | 09:00 AM'; // Load from data source
    norAcceptedController.text =
        '25 March 2024 | 11:00 AM'; // Load from data source
    cargoQuantityController.text = '5000 MT'; // Load from data source
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Timesheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            // Basic Information Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Basic Information',
                  style: blackTextstyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Location Information',
                  style: blackTextstyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time and Date Information',
                  style: blackTextstyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cargo Information',
                  style: blackTextstyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomFormField(
              title: 'Quantity of Cargo',
              controller: cargoQuantityController,
            ),
            const SizedBox(height: 32),

            const SizedBox(height: 20),
            CustomFilledButton(
              title: 'Save Changes',
              onPressed: () {},
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
