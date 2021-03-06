import 'package:dynamic_app/views/destinations/model/destination.dart';
import 'package:flutter/material.dart';

Map<String, String> data = {
  "craneHours": "{hours,plural, =1{1 h}other{{hours}h}}",
  "craneMinutes": "{minutes,plural, =1{1 m}other{{minutes}m}}",
  "craneFlightDuration": "{hoursShortForm} {minutesShortForm}",
  "craneSleep8SemanticLabel": "Mayan ruins on a cliff above a beach",
  "craneSleep4SemanticLabel": "Lake-side hotel in front of mountains",
  "craneSleep2SemanticLabel": "Machu Picchu citadel",
  "craneSleep1SemanticLabel":
      "Chalet in a snowy landscape with evergreen trees",
  "craneSleep0SemanticLabel": "Overwater bungalows",
  "craneFly13SemanticLabel": "Seaside pool with palm trees",
  "craneFly12SemanticLabel": "Pool with palm trees",
  "craneFly11SemanticLabel": "Brick lighthouse at sea",
  "craneFly10SemanticLabel": "Al-Azhar Mosque towers during sunset",
  "craneFly9SemanticLabel": "Man leaning on an antique blue car",
  "craneFly8SemanticLabel": "Supertree Grove",
  "craneEat9SemanticLabel": "Café counter with pastries",
  "craneEat2SemanticLabel": "Burger",
  "craneFly5SemanticLabel": "Lake-side hotel in front of mountains",
  "demoSelectionControlsSubtitle": "Tick boxes, radio buttons and switches",
  "craneEat10SemanticLabel": "Woman holding huge pastrami sandwich",
  "craneFly4SemanticLabel": "Overwater bungalows",
  "craneEat7SemanticLabel": "Bakery entrance",
  "craneEat6SemanticLabel": "Shrimp dish",
  "craneEat5SemanticLabel": "Artsy restaurant seating area",
  "craneEat4SemanticLabel": "Chocolate dessert",
  "craneEat3SemanticLabel": "Korean taco",
  "craneFly3SemanticLabel": "Machu Picchu citadel",
  "craneEat1SemanticLabel": "Empty bar with diner-style stools",
  "craneEat0SemanticLabel": "Pizza in a wood-fired oven",
  "craneSleep11SemanticLabel": "Taipei 101 skyscraper",
  "craneSleep10SemanticLabel": "Al-Azhar Mosque towers during sunset",
  "craneSleep9SemanticLabel": "Brick lighthouse at sea",
  "craneEat8SemanticLabel": "Plate of crawfish",
  "craneSleep7SemanticLabel": "Colourful apartments at Ribeira Square",
  "craneSleep6SemanticLabel": "Pool with palm trees",
  "craneSleep5SemanticLabel": "Tent in a field",
  "craneFly7SemanticLabel": "Mount Rushmore",
  "demoSelectionControlsCheckboxTitle": "Tick box",
  "craneSleep3SemanticLabel": "Man leaning on an antique blue car",
  "demoSelectionControlsRadioTitle": "Radio",
  "demoSelectionControlsRadioDescription":
      "Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs to see all available options side by side.",
  "demoSelectionControlsSwitchTitle": "Switch",
  "demoSelectionControlsSwitchDescription":
      "On/off switches toggle the state of a single settings option. The option that the switch controls, as well as the state it’s in, should be made clear from the corresponding inline label.",
  "craneFly0SemanticLabel": "Chalet in a snowy landscape with evergreen trees",
  "craneFly1SemanticLabel": "Tent in a field",
  "craneFly2SemanticLabel": "Prayer flags in front of snowy mountain",
  "craneFly6SemanticLabel": "Aerial view of Palacio de Bellas Artes",
  "craneFormDate": "Select date",
  "craneFormOrigin": "Choose origin",
  "craneFly2": "Khumbu Valley, Nepal",
  "craneFly3": "Machu Picchu, Peru",
  "craneFly4": "Malé, Maldives",
  "craneFly5": "Vitznau, Switzerland",
  "craneFly6": "Mexico City, Mexico",
  "craneFly7": "Mount Rushmore, United States",
  "settingsTextDirectionLocaleBased": "Based on locale",
  "craneFly9": "Havana, Cuba",
  "craneFly10": "Cairo, Egypt",
  "craneFly11": "Lisbon, Portugal",
  "craneFly12": "Napa, United States",
  "craneFly13": "Bali, Indonesia",
  "craneSleep0": "Malé, Maldives",
  "craneSleep1": "Aspen, United States",
  "craneSleep2": "Machu Picchu, Peru",
  "demoCupertinoSegmentedControlTitle": "Segmented control",
  "craneSleep4": "Vitznau, Switzerland",
  "craneSleep5": "Big Sur, United States",
  "craneSleep6": "Napa, United States",
  "craneSleep7": "Porto, Portugal",
  "craneSleep8": "Tulum, Mexico",
  "craneEat5": "Seoul, South Korea",
  "craneSleep9": "Lisbon, Portugal",
  "craneEat10": "Lisbon, Portugal",
  "demoCupertinoSegmentedControlDescription":
      "Used to select between a number of mutually exclusive options. When one option in the segmented control is selected, the other options in the segmented control cease to be selected.",
  "chipTurnOnLights": "Turn on lights",
  "chipSmall": "Small",
  "chipMedium": "Medium",
  "chipLarge": "Large",
  "chipElevator": "Lift",
  "chipWasher": "Washing machine",
  "chipFireplace": "Fireplace",
  "chipBiking": "Cycling",
  "craneFormDiners": "Diners",
  "rallyAlertsMessageUnassignedTransactions":
      "{count,plural, =1{Increase your potential tax deduction! Assign categories to 1 unassigned transaction.}other{Increase your potential tax deduction! Assign categories to {count} unassigned transactions.}}",
  "craneFormTime": "Select time",
  "craneFormLocation": "Select location",
  "craneFormTravelers": "Travellers",
  "craneEat8": "Atlanta, United States",
  "craneFormDestination": "Choose destination",
  "craneFormDates": "Select dates",
  "craneFly": "FLY",
  "craneSleep": "SLEEP",
  "craneEat": "EAT",
  "craneFlySubhead": "Explore flights by destination",
  "craneSleepSubhead": "Explore properties by destination",
  "craneEatSubhead": "Explore restaurants by destination",
  "craneFlyStops":
      "{numberOfStops,plural, =0{Non-stop}=1{1 stop}other{{numberOfStops} stops}}",
  "craneSleepProperties":
      "{totalProperties,plural, =0{No available properties}=1{1 available property}other{{totalProperties} available properties}}",
  "craneEatRestaurants":
      "{totalRestaurants,plural, =0{No restaurants}=1{1 restaurant}other{{totalRestaurants} restaurants}}",
  "craneFly0": "Aspen, United States",
  "demoCupertinoSegmentedControlSubtitle": "iOS-style segmented control",
  "craneSleep10": "Cairo, Egypt",
  "craneEat9": "Madrid, Spain",
  "craneFly1": "Big Sur, United States",
  "craneEat7": "Nashville, United States",
  "craneEat6": "Seattle, United States",
  "craneFly8": "Singapore",
  "craneEat4": "Paris, France",
  "craneEat3": "Portland, United States",
  "craneEat2": "Córdoba, Argentina",
  "craneEat1": "Dallas, United States",
  "craneEat0": "Naples, Italy",
  "craneSleep11": "Taipei, Taiwan",
  "craneSleep3": "Havana, Cuba",
};

List<FlyDestination> getFlyDestinations(BuildContext context) =>
    <FlyDestination>[
      FlyDestination(
        id: 0,
        destination: data['craneFly0']!,
        stops: 1,
        duration: const Duration(hours: 6, minutes: 15),
        assetSemanticLabel: data['craneFly0SemanticLabel']!,
        imageAspectRatio: 400 / 400,
      ),
      FlyDestination(
        id: 1,
        destination: data['craneFly1']!,
        stops: 0,
        duration: const Duration(hours: 13, minutes: 30),
        assetSemanticLabel: data['craneFly1SemanticLabel']!,
        imageAspectRatio: 400 / 410,
      ),
      FlyDestination(
        id: 2,
        destination: data['craneFly2']!,
        stops: 0,
        duration: const Duration(hours: 5, minutes: 16),
        assetSemanticLabel: data['craneFly2SemanticLabel']!,
        imageAspectRatio: 400 / 394,
      ),
      FlyDestination(
        id: 3,
        destination: data['craneFly3']!,
        stops: 2,
        duration: const Duration(hours: 19, minutes: 40),
        assetSemanticLabel: data['craneFly3SemanticLabel']!,
        imageAspectRatio: 400 / 377,
      ),
      FlyDestination(
        id: 4,
        destination: data['craneFly4']!,
        stops: 0,
        duration: const Duration(hours: 8, minutes: 24),
        assetSemanticLabel: data['craneFly4SemanticLabel']!,
        imageAspectRatio: 400 / 308,
      ),
      FlyDestination(
        id: 5,
        destination: data['craneFly5']!,
        stops: 1,
        duration: const Duration(hours: 14, minutes: 12),
        assetSemanticLabel: data['craneFly5SemanticLabel']!,
        imageAspectRatio: 400 / 418,
      ),
      FlyDestination(
        id: 6,
        destination: data['craneFly6']!,
        stops: 0,
        duration: const Duration(hours: 5, minutes: 24),
        assetSemanticLabel: data['craneFly6SemanticLabel']!,
        imageAspectRatio: 400 / 345,
      ),
      FlyDestination(
        id: 7,
        destination: data['craneFly7']!,
        stops: 1,
        duration: const Duration(hours: 5, minutes: 43),
        assetSemanticLabel: data['craneFly7SemanticLabel']!,
        imageAspectRatio: 400 / 408,
      ),
      FlyDestination(
        id: 8,
        destination: data['craneFly8']!,
        stops: 0,
        duration: const Duration(hours: 8, minutes: 25),
        assetSemanticLabel: data['craneFly8SemanticLabel']!,
        imageAspectRatio: 400 / 399,
      ),
      FlyDestination(
        id: 9,
        destination: data['craneFly9']!,
        stops: 1,
        duration: const Duration(hours: 15, minutes: 52),
        assetSemanticLabel: data['craneFly9SemanticLabel']!,
        imageAspectRatio: 400 / 379,
      ),
      FlyDestination(
        id: 10,
        destination: data['craneFly10']!,
        stops: 0,
        duration: const Duration(hours: 5, minutes: 57),
        assetSemanticLabel: data['craneFly10SemanticLabel']!,
        imageAspectRatio: 400 / 307,
      ),
      FlyDestination(
        id: 11,
        destination: data['craneFly11']!,
        stops: 1,
        duration: const Duration(hours: 13, minutes: 24),
        assetSemanticLabel: data['craneFly11SemanticLabel']!,
        imageAspectRatio: 400 / 369,
      ),
      FlyDestination(
        id: 12,
        destination: data['craneFly12']!,
        stops: 2,
        duration: const Duration(hours: 10, minutes: 20),
        assetSemanticLabel: data['craneFly12SemanticLabel']!,
        imageAspectRatio: 400 / 394,
      ),
      FlyDestination(
        id: 13,
        destination: data['craneFly13']!,
        stops: 0,
        duration: const Duration(hours: 7, minutes: 15),
        assetSemanticLabel: data['craneFly13SemanticLabel']!,
        imageAspectRatio: 400 / 433,
      ),
    ];
