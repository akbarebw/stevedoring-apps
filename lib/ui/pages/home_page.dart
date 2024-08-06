import 'package:flutter/material.dart';
import 'package:stevedoring/shared/theme.dart';
import 'package:stevedoring/ui/widgets/forms.dart';
import 'package:stevedoring/ui/widgets/home_recent_timesheet_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: orangeTextstyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextstyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_profile.png',
                width: 20,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Wrap(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add Worksheet'),
                    onTap: () {
                      Navigator.pushNamed(context, '/add-timesheet');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.upload_file),
                    title: const Text('Upload Timesheet'),
                    onTap: () {
                      // Navigate to Upload Timesheet page
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.sync),
                    title: const Text('Sync Data Master'),
                    onTap: () {
                      // Navigate to Sync Data Master page
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: blueColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(context),
          cardSearch(),
          buildRecentTimesheets(context),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    String fullName = 'Akbar bintang wicaksono';

    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0];
    String secondNameInitial = nameParts.length > 1 ? nameParts[1][0] : '';
    String displayName = '$firstName $secondNameInitial.';

    return Container(
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: greyTextstyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                displayName,
                style: blackTextstyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  // Aksi ketika ikon notifikasi diklik
                },
                child: Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.only(right: 24),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/ic_notif.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardSearch() {
    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/card-blue.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search your package!",
            style: whiteTextstyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SearchFormField(
            hint: 'Enter package name...',
            controller: TextEditingController(),
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget buildRecentTimesheets(BuildContext context) {
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
                  Navigator.pushNamed(context, '/daily-report');
                },
              ),
              MoreOption(
                label: "Barge Progress",
                icon: Icons.directions_boat,
                onTap: () {
                  Navigator.pushNamed(context, '/barge-progress');
                },
              ),
              MoreOption(
                label: "Final",
                icon: Icons.check_circle,
                onTap: () {
                  // Navigate to final page
                },
              ),
            ],
          ),
          HomeRecentTimesheet(
            title: "Shipment A23",
            subtitle: "shipment xyz",
            date: "12 Jan 2024",
            startLocation: "samarinda",
            endLocation: "jakarta",
            status: "completed",
            moreOptions: [
              MoreOption(
                label: "Detail",
                icon: Icons.details,
                onTap: () {
                  // Navigate to edit page
                },
              ),
              MoreOption(
                label: "Edit",
                icon: Icons.edit,
                onTap: () {
                  // Navigate to edit page
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
              MoreOption(
                label: "Final",
                icon: Icons.check_circle,
                onTap: () {
                  // Navigate to final page
                },
              ),
            ],
          ),
          HomeRecentTimesheet(
            title: "Task Title",
            subtitle: "Task Subtitle",
            date: "12 Jan 2024",
            startLocation: "Start Location",
            endLocation: "End Location",
            status: "Cancelled",
            moreOptions: [
              MoreOption(
                label: "Detail",
                icon: Icons.details,
                onTap: () {
                  // Navigate to edit page
                },
              ),
              MoreOption(
                label: "Edit",
                icon: Icons.edit,
                onTap: () {
                  // Navigate to edit page
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
              MoreOption(
                label: "Final",
                icon: Icons.check_circle,
                onTap: () {
                  // Navigate to final page
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
