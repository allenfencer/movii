class Movie {
  String imgLoc;
  String movieName;
  double rating;

  Movie({required this.imgLoc, required this.movieName, required this.rating});

  static final List<Movie> movieList = [
    Movie(imgLoc: 'assets/images/avatar.png', movieName: 'Avatar', rating: 8.6),
    Movie(imgLoc: 'assets/images/frozen.png', movieName: 'Frozen', rating: 7.6),
    Movie(imgLoc: 'assets/images/up.png', movieName: 'Up', rating: 8.6),
    Movie(
        imgLoc: 'assets/images/warzone.png', movieName: 'Warzone', rating: 7.6),
  ];
}
