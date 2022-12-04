import 'package:flutter/material.dart';
import 'package:my_plant_application/widgets/components/gridview_plants.dart';
import 'package:my_plant_application/constants.dart';

class TabLibrary extends StatefulWidget {
  @override
  TabLibraryState createState() => TabLibraryState();
}

class TabLibraryState extends State<TabLibrary>
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
                  color: icColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                // isScrollable: false,
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
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  SizedBox(
                    // padding: const EdgeInsets.only(bottom: 60),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: PlantsGrid(),
                  ),
                  Container(
                    height: 1000,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        color: Colors.blue),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        color: Colors.redAccent),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
