class MyDataModel {
  int? id;
  String? email;
  String? name;
  String? phone;
  String? dateOfBirth;
  String? eduLevel;
  String? gradLevel;
  String? university;
  String? major;
  static MyDataModel? _instance;

  void clearObject() {
    _instance = null;
  }

  MyDataModel({
    this.id,
    this.name,
    this.major,
    this.email,
    this.eduLevel,
    this.gradLevel,
    this.dateOfBirth,
    this.university,
    this.phone,
  });

  setNewMyData({
    int? id,
    String? email,
    String? name,
    String? phone,
    String? dateOfBirth,
    String? eduLevel,
    String? gradLevel,
    String? university,
    String? major,
  }) {
    this.phone = phone ?? this.phone;
    this.id = id ?? this.id;
    this.name = name ?? this.name;
    this.email = email ?? this.email;
    this.dateOfBirth = dateOfBirth ?? this.dateOfBirth;
    this.eduLevel = eduLevel ?? this.eduLevel;
    this.gradLevel = gradLevel ?? this.gradLevel;
    this.university = university ?? this.university;
    this.major = major ?? this.major;
  }

  factory MyDataModel.fromMap(Map<String, dynamic> map) {
    if (_instance == null) {
      //create  first time
      _instance = MyDataModel(
        id: map['id'] ?? 0,
        email: map['email'] ?? '',
        phone: map['phone'] ?? '',
        dateOfBirth: map['dateOfBirth'] ?? '',
        eduLevel: map['eduLevel'] ?? '',
        gradLevel: map['gradLevel'] ?? '',
        university: map['university'] ?? '',
        major: map['major'] ?? '',
      );
    } else {
      _instance?.setNewMyData(
        id: map['id'] ?? 0,
        email: map['email'] ?? '',
        phone: map['phone'] ?? '',
        dateOfBirth: map['dateOfBirth'] ?? '',
        eduLevel: map['eduLevel'] ?? '',
        gradLevel: map['gradLevel'] ?? '',
        university: map['university'] ?? '',
        major: map['major'] ?? '',
      );
    }

    return _instance!;
  }

  static MyDataModel getInstance() {
    return _instance ?? MyDataModel();
  }
}