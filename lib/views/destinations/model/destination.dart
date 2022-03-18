import 'package:flutter/material.dart';

abstract class Destination {
  const Destination({
    required this.id,
    required this.destination,
    required this.assetSemanticLabel,
    required this.imageAspectRatio,
  });

  final int id;
  final String destination;
  final String assetSemanticLabel;
  final double imageAspectRatio;

  String get assetName;

  String subtitle(BuildContext context);
  String subtitleSemantics(BuildContext context) => subtitle(context);

  @override
  String toString() => '$destination (id=$id)';
}

class FlyDestination extends Destination {
  const FlyDestination({
    required int id,
    required String destination,
    required String assetSemanticLabel,
    required this.stops,
    double imageAspectRatio = 1,
    required this.duration,
  }) : super(
          id: id,
          destination: destination,
          assetSemanticLabel: assetSemanticLabel,
          imageAspectRatio: imageAspectRatio,
        );

  final int stops;
  final Duration duration;

  @override
  String get assetName => 'crane/destinations/fly_$id.jpg';

  @override
  String subtitle(BuildContext context) {
    return '2 stops';
  }
}
