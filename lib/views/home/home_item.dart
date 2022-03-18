import 'package:dynamic_app/constants/constants.dart';
import 'package:dynamic_app/views/feature_wrapper/feature_wrapper_widget.dart';
import 'package:flutter/material.dart';

class HomeItemView extends StatelessWidget {
  const HomeItemView({Key? key, required this.item}) : super(key: key);

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: ListTile(
          leading: Icon(
            item["icon"],
            color: Colors.blue,
            size: 30,
          ),
          title: Text(
            item["name"],
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
          trailing: item["rollOutRegion"] == Region.pk
              ? const Icon(Icons.arrow_forward_ios)
              : const SizedBox(),
          onTap: () {
            if (item["rollOutRegion"] == Region.pk) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      const FeatureWrapperWidget(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
