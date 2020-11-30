class UserWithToken {
  String jwt;
  User user;

  UserWithToken({this.jwt, this.user});

  UserWithToken.fromJson(Map<String, dynamic> json) {
    jwt = json['jwt'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jwt'] = this.jwt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  bool confirmed;
  bool blocked;
  String sId;
  String username;
  String email;
  String provider;
  DateTime createdAt;
  DateTime updatedAt;
  int iV;
  Role role;
  String id;
  String phoneNumber;

  User({
    this.confirmed,
    this.blocked,
    this.sId,
    this.username,
    this.email,
    this.provider,
    this.createdAt,
    this.updatedAt,
    this.iV,
    this.role,
    this.id,
    this.phoneNumber,
  });

  User.fromJson(Map<String, dynamic> json) {
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    sId = json['_id'];
    username = json['username'];
    email = json['email'];
    provider = json['provider'];
    createdAt =
        json['createdAt'] != null ? DateTime.parse((json['createdAt'])) : null;
    updatedAt =
        json['updatedAt'] != null ? DateTime.parse((json['updatedAt'])) : null;
    iV = json['__v'];
    role = json['role'] != null ? new Role.fromJson(json['role']) : null;
    id = json['id'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['confirmed'] = this.confirmed;
    data['blocked'] = this.blocked;
    data['_id'] = this.sId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['provider'] = this.provider;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    if (this.role != null) {
      data['role'] = this.role.toJson();
    }
    data['id'] = this.id;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}

class Role {
  String sId;
  String name;
  String description;
  String type;
  DateTime createdAt;
  DateTime updatedAt;
  int iV;
  String id;

  Role({
    this.sId,
    this.name,
    this.description,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.iV,
    this.id,
  });

  Role.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    type = json['type'];
    createdAt =
        json['createdAt'] != null ? DateTime.parse((json['createdAt'])) : null;
    updatedAt =
        json['updatedAt'] != null ? DateTime.parse((json['updatedAt'])) : null;
    iV = json['__v'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['type'] = this.type;
    data['createdAt'] = this.createdAt.toIso8601String();
    data['updatedAt'] = this.updatedAt.toIso8601String();
    data['__v'] = this.iV;
    data['id'] = this.id;
    return data;
  }
}