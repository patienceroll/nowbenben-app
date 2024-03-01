import 'package:json_annotation/json_annotation.dart';

part "type.g.dart";

@JsonSerializable()
class User {
  @JsonKey(name: "account")
  String account;
  @JsonKey(name: "avatar")
  String avatar;
  @JsonKey(name: "company_id")
  int companyId;
  @JsonKey(name: "company_list")
  List<CompanyList> companyList;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "created_id")
  int createdId;
  @JsonKey(name: "deleted_at")
  String deletedAt;
  @JsonKey(name: "device_id")
  String deviceId;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "login_failed")
  int loginFailed;
  @JsonKey(name: "login_ip")
  String loginIp;
  @JsonKey(name: "login_time")
  String loginTime;
  @JsonKey(name: "MD5password")
  String md5Password;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "password")
  String password;
  @JsonKey(name: "phone")
  String phone;
  @JsonKey(name: "staff")
  dynamic staff;
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "updated_at")
  String updatedAt;

  User({
    required this.account,
    required this.avatar,
    required this.companyId,
    required this.companyList,
    required this.createdAt,
    required this.createdId,
    required this.deletedAt,
    required this.deviceId,
    required this.id,
    required this.loginFailed,
    required this.loginIp,
    required this.loginTime,
    required this.md5Password,
    required this.name,
    required this.password,
    required this.phone,
    this.staff,
    required this.status,
    required this.type,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class CompanyList {
  @JsonKey(name: "address")
  String address;
  @JsonKey(name: "city")
  String city;
  @JsonKey(name: "county")
  String county;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "created_id")
  int createdId;
  @JsonKey(name: "deleted_at")
  String deletedAt;
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "is_main")
  int isMain;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "province")
  String province;
  @JsonKey(name: "short_name")
  String shortName;
  @JsonKey(name: "staff_id")
  int staffId;
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "updated_at")
  String updatedAt;

  CompanyList({
    required this.address,
    required this.city,
    required this.county,
    required this.createdAt,
    required this.createdId,
    required this.deletedAt,
    required this.id,
    required this.isMain,
    required this.name,
    required this.province,
    required this.shortName,
    required this.staffId,
    required this.status,
    required this.updatedAt,
  });

  factory CompanyList.fromJson(Map<String, dynamic> json) =>
      _$CompanyListFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyListToJson(this);
}
