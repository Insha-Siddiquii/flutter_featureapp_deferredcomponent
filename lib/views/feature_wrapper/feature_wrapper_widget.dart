import 'package:dynamic_app/views/destinations/destinations_view.dart'
    deferred as destination;
import 'package:flutter/material.dart';

class FeatureWrapperWidget extends StatefulWidget {
  const FeatureWrapperWidget({Key? key}) : super(key: key);

  @override
  State<FeatureWrapperWidget> createState() => _FeatureWrapperWidgetState();
}

class _FeatureWrapperWidgetState extends State<FeatureWrapperWidget> {
  late Future<void> _libraryFuture;
  @override
  void initState() {
    _libraryFuture = destination.loadLibrary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature App'),
      ),
      body: FutureBuilder(
        future: _libraryFuture,
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Oops Error found: ${snapshot.error}'),
              );
            }
            return destination.DestinationView(); //Call to deferred Component
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                SizedBox(
                  height: 10.0,
                ),
                Text('Please wait while component is installing...')
              ],
            ),
          );
        },
      ),
    );
  }
}
