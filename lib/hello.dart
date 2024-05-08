// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class hello {
  final int id;
  final String name;
  final String address;
  hello({
    required this.id,
    required this.name,
    required this.address,
  });
// hello coding
  int getInt() {
    return 0;
  }

  hello copyWith({
    int? id,
    String? name,
    String? address,
  }) {
    return hello(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'address': address,
    };
  }

  factory hello.fromMap(Map<String, dynamic> map) {
    return hello(
      id: map['id'] as int,
      name: map['name'] as String,
      address: map['address'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory hello.fromJson(String source) =>
      hello.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'hello(id: $id, name: $name, address: $address)';

  @override
  bool operator ==(covariant hello other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.address == address;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ address.hashCode;
}
