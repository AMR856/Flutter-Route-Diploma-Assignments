import 'dart:io';


class Movie{
  String title;
  String studio;
  String rating;
  final List<String> allowedRatings = ["PG13", "PG"];

  Movie(this.title, this.studio, [this.rating = "PG"]) {
    if (!allowedRatings.contains(this.rating.toUpperCase()))
      throw ArgumentError.value(this.rating, "Rating is not an acceptable value");
  }
  static List<Movie> getPG(List <Movie> movieArray){
    List<Movie> pgMovieArray = [];
    for (int i = 0; i < movieArray.length; i++){
      if (movieArray[i].rating.toUpperCase() == "PG")
        pgMovieArray.add(movieArray[i]);
    }
    return pgMovieArray;
  }
}

void main() {
  try {
    // ChatGPT generated tests
    Movie m1 = Movie("Inception", "Warner Bros", "PG13");
    Movie m2 = Movie("Finding Nemo", "Pixar"); // Default to PG
    Movie m3 = Movie("Spider-Man", "Sony", "PG");
    Movie m4 = Movie("The Matrix", "Warner Bros", "PG13");

    Movie m5 = Movie("Casino Royale", "Eon Productions", "PG13"); // The required test in the assignment
    List<Movie> allMovies = [m1, m2, m3, m4, m5];

    print("All Movies:");
    for (var movie in allMovies) {
      print("${movie.title} - ${movie.studio} - ${movie.rating}");
    }
    List<Movie> pgMovies = Movie.getPG(allMovies);

    print("\nPG Movies:");
    for (var movie in pgMovies) {
      print("${movie.title} - ${movie.studio} - ${movie.rating}");
    }
  } catch (e) {
    print("Error: $e");
  }

  try {
    Movie invalidMovie = Movie("Deadpool", "Marvel", "R"); // Should throw error
  } catch (e) {
    print("\nCaught error for invalid rating: $e");
  }
}