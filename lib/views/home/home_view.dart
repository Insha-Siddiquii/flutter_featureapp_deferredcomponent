import 'package:dynamic_app/constants/constants.dart';
import 'package:flutter/material.dart';

import 'home_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature App')),
      body: ListView.builder(
        itemCount: GlobalConstants.featuresNames.length,
        itemBuilder: (context, index) => HomeItemView(
          item: GlobalConstants.featuresNames[index],
        ),
      ),
    );
  }
}
