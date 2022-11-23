import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';
import 'package:my_plant_application/widgets/screens/home.dart';
import 'package:go_router/go_router.dart';
import 'package:my_plant_application/widgets/screens/library.dart';
import 'package:my_plant_application/widgets/screens/reminder.dart';

class TabLibrary extends StatefulWidget {
  @override
  _TabLibraryState createState() => _TabLibraryState();
}

class _TabLibraryState extends State<TabLibrary>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    // tabController.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
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
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Color(0XFFA0AE88),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    child: Text('Library'),
                  ),
                  Tab(
                    child: Text('Collections'),
                  ),
                  Tab(
                    child: Text('Favorites'),
                  ),
                ],
              ),
            ),
            // tab bar view here
            // Container(
            //   width: double.maxFinite,
            //   child: TabBarView(
            //     controller: tabController,
            //     children: [Library(), Home(), Reminder()],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
