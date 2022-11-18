class User {
  final String id;
  final String accountId;
  final String lastTimestamp;
  final String sessionStatus;

  User({
    required this.id,
    required this.accountId,
    required this.lastTimestamp,
    required this.sessionStatus,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        accountId: json['accountId'],
        lastTimestamp: json['lastTimestamp'],
        sessionStatus: json['sessionStatus']);
  }
}

// ignore: camel_case_types
class detailuser {
  final String id;
  final String name;
  final String username;
  final String balance;

  detailuser({
    required this.id,
    required this.name,
    required this.username,
    required this.balance,
  });

  factory detailuser.fromJson(Map<String, dynamic> json) {
    return detailuser(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        balance: json['balance']);
  }
}
