import 'dart:convert';

import 'package:flutter/material.dart';

import 'Album.dart';
import 'package:http/http.dart' as http;

class DataHttp extends StatefulWidget {
  const DataHttp({Key? key}) : super(key: key);

  @override
  State<DataHttp> createState() => _DataHttpState();
}

class _DataHttpState extends State<DataHttp> {
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exemplo de deleção"),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: _futureAlbum,
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _futureAlbum = fetchAlbum();
                          });
                        },
                        child: const Text("Criar dado")),
                    Text(snapshot.data?.title ?? "Deletado"),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _futureAlbum =
                                deleteAlbum(snapshot.data!.id.toString());
                          });
                        },
                        child: const Text("Deletar dado"))
                  ],
                );
              } else {
                return Text('$snapshot.hasError');
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Album> deleteAlbum(String id) async {
    final http.Response response = await http.delete(
        Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to delete album.');
    }
  }
}
