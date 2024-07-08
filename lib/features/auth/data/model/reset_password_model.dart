class ResetPasswordModel {
  String? email;
  String? token;
  bool? isCompleted;
  String? password;

  ResetPasswordModel({
    this.email,
    this.token,
    this.isCompleted,
    this.password,
  });

  ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    token = json['token'];
    isCompleted = json['isCompleted'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['token'] = this.token;
    data['isCompleted'] = this.isCompleted;
    data['password'] = this.password;
    return data;
  }
}
