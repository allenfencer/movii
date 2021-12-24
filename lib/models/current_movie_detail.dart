class CurrentMovieDetails {
  String description;
  String directorName;
  List<String> castNames;
  List<String> genre;

  CurrentMovieDetails(
      {required this.castNames,
      required this.genre,
      required this.description,
      required this.directorName});
}

class CurrentMovie {
  static CurrentMovieDetails currentRunningMovie = CurrentMovieDetails(
      castNames: [
        'RAMI MALIK',
        'GYILM LEE',
        'AISHWARYA LAKSHMI',
        'SERA',
        'ALLEN FENCER',
        'NAVANEETH VENU',
        
      ],
      genre: [
        'DRAMA',
        'BIOGRAPHY',
        'MUSICAL FILM'
      ],
      description:
          'Honoring Queen, their music and their outstanding vocalist Freddie Mercury, who defied stereotypes and defeated conventio...',
      directorName: 'Brian Singer');
}
