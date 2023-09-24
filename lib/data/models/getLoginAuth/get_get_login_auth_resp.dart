class GetGetLoginAuthResp {
  User? user;
  String? tokenType;
  String? status;
  String? message;
  String? expiresIn;
  String? token;
  String? refreshToken;

  GetGetLoginAuthResp(
      {this.user,
      this.tokenType,
      this.status,
      this.message,
      this.expiresIn,
      this.token,
      this.refreshToken});

  GetGetLoginAuthResp.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    tokenType = json['token_type'];
    status = json['status'];
    message = json['message'];
    expiresIn = json['expires_in'];
    token = json['token'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user?.toJson();
    }
    if (tokenType != null) {
      data['token_type'] = tokenType;
    }
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (expiresIn != null) {
      data['expires_in'] = expiresIn;
    }
    if (token != null) {
      data['token'] = token;
    }
    if (refreshToken != null) {
      data['refresh_token'] = refreshToken;
    }
    return data;
  }
}

class User {
  String? id;
  String? roleId;
  String? name;
  String? email;
  String? username;

  User({this.id, this.roleId, this.name, this.email, this.username});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roleId = json['role_id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    if (roleId != null) {
      data['role_id'] = roleId;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (username != null) {
      data['username'] = username;
    }
    return data;
  }
}
