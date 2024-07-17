import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neon_academy2/widgets/date_time_widget.dart';
import 'package:neon_academy2/widgets/font_picker_widget.dart';
import 'package:neon_academy2/widgets/gallery_picker_widget.dart';
import 'package:neon_academy2/widgets/profile_body_widget.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "Profile",
              icon: Icon(Icons.person),
            ),
            Tab(
              text: "Galery",
              icon: Icon(Icons.image),
            ),
            Tab(
              text: "Font",
              icon: Icon(Icons.font_download),
            ),
            Tab(
              text: "Calendar",
              icon: Icon(Icons.calendar_month),
            ),
            Tab(
              text: "Color",
              icon: Icon(Icons.color_lens_outlined),
            ),
          ],
          labelColor: Colors.redAccent,
          unselectedLabelColor: Colors.blueGrey,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: ProfileBody("Name : Deniz", "Age : 20", "images/p2.png"),
          ),
          Center(
            child: GalleryPickerWidget(),
          ),
          Center(
            child: FontPickerWidget(
              title: "Font Picker",
            ),
          ),
          Center(
            child: DateTimeWidget(),
          ),
          Center(
            child: Text("There is a problem color picker library so I didn't do that"),
          ),
        ],
      ),
    );
  }
}






