import 'dart:convert';

class Classroom {
  Classroom({
    required this.className,
    required this.description,
  });

  final String className;
  final String description;

  Classroom copyWith({
    String? className,
    String? description,
  }) {
    return Classroom(
      className: className ?? this.className,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'className': className,
      'description': description,
    };
  }

  factory Classroom.fromMap(Map<String, dynamic> map) {
    return Classroom(
      className: map['className'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Classroom.fromJson(String source) => Classroom.fromMap(json.decode(source));

  @override
  String toString() => 'Classroom(className: $className, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Classroom &&
      other.className == className &&
      other.description == description;
  }

  @override
  int get hashCode => className.hashCode ^ description.hashCode;
}
