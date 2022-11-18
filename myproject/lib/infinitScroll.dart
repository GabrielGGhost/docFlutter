import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Payload payloadFromJson(String str) => Payload.fromJson(json.decode(str));

String payloadToJson(Payload data) => json.encode(data.toJson());

class Payload {
  Payload({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic? prevPageUrl;
  int? to;
  int? total;

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  Datum({
    this.id,
    this.nomerT,
    this.datumOperator,
    this.ourPrice,
  });

  int? id;
  String? nomerT;
  Operator? datumOperator;
  int? ourPrice;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    nomerT: json["nomer_t"],
    datumOperator: operatorValues.map![json["operator"]],
    ourPrice: json["our_price"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nomer_t": nomerT,
    "operator": operatorValues.reverse![datumOperator],
    "our_price": ourPrice,
  };
}

enum Operator { KV }

final operatorValues = EnumValues({"kv": Operator.KV});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page = 1;
  List<Datum> _DataList = [];
  late Future<List<Datum>> _future;
  ScrollController _controller = ScrollController();

  Future<List<Datum>> getData(int pageCount) async {
    Uri url =
    Uri.parse("https://nomer.biz.ua/mobile/kievstar?page=$pageCount");
    var response = await http.get(url, headers: {
      "Accept": "application/json"
    }).timeout(const Duration(seconds: 10));
    Payload payload = payloadFromJson(response.body);
    _DataList.insertAll(_DataList.length, payload.data!);
    page++;
    return _DataList;
  }

  @override
  void initState() {
    _future = getData(page);

    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        setState(() {
          print("setou");
          _future = getData(page);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: _future,
            builder: (BuildContext ctx, AsyncSnapshot<List<Datum>> snapshot) {
              if (snapshot.hasError) {
                return Center(child: Text("Error"));
              }
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              }

              var dataToShow = snapshot.data;

              return ListView.builder(
                  controller: _controller,
                  itemCount: dataToShow == null ? 0 : dataToShow.length,
                  itemBuilder: (context, index) {
                    final item = dataToShow![index];
                    return Card(
                      child: ListTile(
                        title: Text(dataToShow![index].id.toString()),
                        subtitle: Text(dataToShow![index].ourPrice.toString()),
                      ),
                    );
                  });
            }));
  }
}

