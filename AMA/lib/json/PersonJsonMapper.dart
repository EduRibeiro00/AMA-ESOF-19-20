import 'package:ama/data/Person.dart';

class PersonJsonMapper {
  static Person fromJsonMap(Map<String, dynamic> json) {
    return Person(
      name:  json['Name'],
      key: json['Key'],
      affiliation: json['Affiliation'],
      bio: json['Bio'],
      url: json['URL'],
      imageURL: json['URLphoto']
    );
  }

  static List<Person> fromJsonArrayMap(Map<String, dynamic> jsonMap) {
    List<dynamic> dynamicList = jsonMap['People'];
    List<Person> people = new List<Person>();

    dynamicList.forEach((f) {
      Person p = PersonJsonMapper.fromJsonMap(f);
      people.add(p);
    });

    return people;
  }
}