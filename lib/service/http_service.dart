import 'dart:io';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '128f98bed2df916d25ea09d5e44715eb';
  final String baseUrl = 'https://api.moviedb.org/3/movie/popular?api_key=';

  Future<String> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}
