import 'package:tour/constants/images_constants.dart';

class popularplace {
  final String name;
  final String city;
  final double rating;
  final String state;
  final String description;
  final List<String> images;

  popularplace(
      {required this.name,
      required this.city,
        required this.rating,
      required this.state,
      required this.description,
      required this.images});
}

List<popularplace> place = [
  popularplace(
      name: "Taj-Mahal",
      city: "Agra",
      rating: 5.0,
      state: "Up",
      description: "Beautiful place",
      images: [authBg2, authBg3, authBg2]),
  popularplace(
      name: "Kedarnath",
      city: "UTTARAKHAND",
      rating: 5.0,
      state: "Uttarakhnad",
      description: "beautiful temple",
      images: [authbg8, authbg8, authbg8]),
  popularplace(
      name: "India Gate",
      city: "Delhi",
      rating: 5.0,
      state: "Delhi",
      description: "Best Place",
      images: [authbg9,authbg9,authbg9]),
  popularplace(
      name: "Jublie park",
      city: "jamshedpur",
      rating: 4.0,
      state: "jharkhand",
      description: "Awesome park",
      images: [authBg3, authBg3, authBg3]),
  popularplace(
      name: "Lotus Temple",
      city: "Delhi",
      rating: 4.5,
      state: "Delhi",
      description: "Nice Temple",
      images: [authbg4, authbg4, authbg4]),
  popularplace(
      name: "Golden Temple",
      city: "punjab",
      rating: 4.2,
      state: "punjab",
      description: "Awesome Place",
      images: [authbg5, authbg5, authbg5]),
  popularplace(
      name: "Darjeeling",
      city: "darjelling",
      rating: 4.9,
      state: "westbengal",
      description: "Beautiful Place",
      images: [authbg6, authbg6, authbg6]),
  popularplace(
      name: "Victoria Memorial",
      city: "Kolkata",
      rating: 3.4,
      state: "West-bengal",
      description: "Nice Memorial Place",
      images: [authbg7, authbg7, authbg7]),
];
