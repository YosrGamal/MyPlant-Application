import 'package:flutter/material.dart';
import 'package:my_plant_application/constants.dart';

class TabLibrary extends StatefulWidget {
  @override
  _TabLibraryState createState() => _TabLibraryState();
}

class _TabLibraryState extends State<TabLibrary>
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
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Library',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Collections',
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
