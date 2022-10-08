class Pokemon{

  int? id;
  String name;
  String type1;
  String type2;

  Pokemon({this.id, required this.name, required this.type1, required this.type2});

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'name' : name,
      'type1' : type1,
      'type2' : type2
    };
  }

  @override
  String toString() {
    return 'Dog{id: $id\r\nname: $name\r\ntype1: $type1\r\ntype2: $type1}';
  }

}