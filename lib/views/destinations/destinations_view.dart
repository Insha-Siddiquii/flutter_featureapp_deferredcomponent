import 'package:flutter/material.dart';

import 'destination_dashboard.dart';

class DestinationView extends StatelessWidget {
  const DestinationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Destination',
      debugShowCheckedModeBanner: false,
      home: DestinationDashboard(),
    );
  }
}
