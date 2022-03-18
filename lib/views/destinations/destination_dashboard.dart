import 'package:flutter/material.dart';

import 'model/data.dart';
import 'model/destination.dart';

class DestinationDashboard extends StatelessWidget {
  const DestinationDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = getFlyDestinations(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
        bottom: 10,
        right: 15,
      ),
      child: Stack(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: DestinationCard(
                  destination: destinations[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({Key? key, required this.destination})
      : super(key: key);
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: const EdgeInsetsDirectional.only(end: 8),
          leading: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            child: SizedBox(
              width: 90,
              height: 90,
              child: _DestinationImage(destination: destination),
            ),
          ),
          title: Text(
            destination.destination,
            style: const TextStyle(fontSize: 12, color: Colors.black),
          ),
        ),
        const Divider(thickness: 1),
      ],
    );
  }
}

class _DestinationImage extends StatelessWidget {
  const _DestinationImage({required this.destination});
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: destination.assetSemanticLabel,
      child: ExcludeSemantics(
        child: FadeInImagePlaceholder(
          image: AssetImage(
            destination.assetName,
            package: 'flutter_gallery_assets',
          ),
          fit: BoxFit.cover,
          width: 45,
          height: 45,
          placeholder: LayoutBuilder(builder: (context, constraints) {
            return Container(
              color: Colors.black.withOpacity(0.1),
              width: constraints.maxWidth,
              height: constraints.maxWidth / destination.imageAspectRatio,
            );
          }),
        ),
      ),
    );
  }
}

class FadeInImagePlaceholder extends StatelessWidget {
  const FadeInImagePlaceholder({
    Key? key,
    required this.image,
    required this.placeholder,
    this.child,
    this.duration = const Duration(milliseconds: 500),
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  /// The target image that we are loading into memory.
  final ImageProvider image;

  /// Widget displayed while the target [image] is loading.
  final Widget placeholder;

  /// What widget you want to display instead of [placeholder] after [image] is
  /// loaded.
  ///
  /// Defaults to display the [image].
  final Widget? child;

  /// The duration for how long the fade out of the placeholder and
  /// fade in of [child] should take.
  final Duration duration;

  /// See [Image.excludeFromSemantics].
  final bool excludeFromSemantics;

  /// See [Image.width].
  final double? width;

  /// See [Image.height].
  final double? height;

  /// See [Image.fit].
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      fit: fit,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return this.child ?? child;
        } else {
          return AnimatedSwitcher(
            duration: duration,
            child: frame != null ? this.child ?? child : placeholder,
          );
        }
      },
    );
  }
}
