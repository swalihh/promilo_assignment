class UserModel {
  final String accessToken;
  final String tokenType;
  final String refreshToken;
  final int expiresIn;
  final String scope;
  final List<dynamic> userRole;
  final String tenantName;
  final String userType;
  final String userId;
  final String userName;

  UserModel(
      {required this.accessToken,
      required this.tokenType,
      required this.refreshToken,
      required this.expiresIn,
      required this.scope,
      required this.userRole,
      required this.tenantName,
      required this.userType,
      required this.userId,
      required this.userName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      refreshToken: json['refresh_token'],
      expiresIn: json['expires_in'],
      scope: json['scope'],
      userRole: json['user_role'],
      tenantName: json['tenant_name'],
      userType: json['user_type'],
      userId: json['user_id'],
      userName: json['user_name'],
    );
  }
}
