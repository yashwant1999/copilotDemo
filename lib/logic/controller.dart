import 'package:copilot_demo/logic/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Planet {
  final String name;
  final double distanceFromSun;
  final double mass;
  final double radius;

  Planet({
    required this.name,
    required this.distanceFromSun,
    required this.mass,
    required this.radius,
  });
}

final homeControllerProvider =
    StateNotifierProvider((ref) => ProfileControllerStateNotifier());

class ProfileControllerStateNotifier
    extends StateNotifier<ProfileControllerState> {
  ProfileControllerStateNotifier() : super(ProfileControllerState());

  // Add your state notifier logic here

  var listofOject = [
    Planet(
      name: 'Mercury',
      distanceFromSun: 57.9,
      mass: 0.33,
      radius: 2439.7,
    ),
    Planet(
      name: 'Venus',
      distanceFromSun: 108.2,
      mass: 4.87,
      radius: 6051.8,
    ),
    Planet(
      name: 'Mars',
      distanceFromSun: 227.9,
      mass: 0.642,
      radius: 3396.2,
    ),
    Planet(
      name: 'Jupiter',
      distanceFromSun: 778.5,
      mass: 1898,
      radius: 69911,
    ),
    Planet(
      name: 'Saturn',
      distanceFromSun: 1433.5,
      mass: 568,
      radius: 58232,
    ),
    Planet(
      name: 'Uranus',
      distanceFromSun: 2872.5,
      mass: 86.8,
      radius: 25362,
    ),
    Planet(
      name: 'Neptune',
      distanceFromSun: 4495.1,
      mass: 102,
      radius: 24622,
    ),
  ];

  double calculateAverageDistanceFromSun(List<Planet> planets) {
    if (planets.isEmpty) {
      return 0;
    }

    dynamic distance = 0;
    for (var planet in planets) {
      distance += planet.distanceFromSun;
    }

    return distance / planets.length;
  }
}
