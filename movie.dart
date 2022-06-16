class Movie {
  Movie({required this.name, required this.image, required this.ratings});
  String name;
  String image;
  List<double> ratings;
  double average = 0;

  static List<Movie> movies = [
    Movie(
        name: "Toy Story",
        image: "/assests/toystory.jpeg",
        ratings: [1, 5, 4.5, 5]),
    Movie(
        name: "Toy Story 2",
        image: "/assests/toystory2.jpeg",
        ratings: [3.3, 5, 4.5]),
    Movie(
        name: "Harry Potter",
        image: "/assests/harryPotter.jpeg",
        ratings: [5, 3.5, 2]),
    Movie(name: "Matrix", image: "/assests/matrix.jpeg", ratings: [4, 2.2]),
  ];

  double calSum(List<double> list) {
    double sum = 0;
    for (double rating in list) {
      sum += rating;
    }
    return sum;
  }

  void calAverageRatings() {
    for (Movie x in movies) {
      List<double> list = x.ratings;
      double sum = calSum(list);
      x.average = sum / list.length;
    }
  }
}
