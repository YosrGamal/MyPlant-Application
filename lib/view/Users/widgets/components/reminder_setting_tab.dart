import 'package:flutter/material.dart';

class TabReminderSetting extends StatefulWidget {
  const TabReminderSetting({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabReminderSettingState createState() => _TabReminderSettingState();
}

class _TabReminderSettingState extends State<TabReminderSetting>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              margin: const EdgeInsets.only(top: 275),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: const Color.fromARGB(255, 124, 161, 126),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Reminder',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Note',
                  ),
                ],
              ),
            ),
            // tab bar view here
          ],
        ),
      ),
    );
  }
}
