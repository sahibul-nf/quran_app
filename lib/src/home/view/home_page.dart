import 'package:flutter/material.dart';
import 'package:flutter_unicons/flutter_unicons.dart';
import 'package:quran_app/src/settings/theme/app_theme.dart';
import 'package:quran_app/src/widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "hiQuran",
          style: AppTextStyle.bigTitle,
        ),
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: Unicon(
            Unicons.uniAppsMonochrome,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 1,
      ),
    );
  }
}
