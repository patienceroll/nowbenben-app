// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      account: json['account'] as String,
      avatar: json['avatar'] as String,
      companyId: json['company_id'] as int,
      companyList: (json['company_list'] as List<dynamic>)
          .map((e) => CompanyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      createdId: json['created_id'] as int,
      deletedAt: json['deleted_at'] as String,
      deviceId: json['device_id'] as String,
      id: json['id'] as int,
      loginFailed: json['login_failed'] as int,
      loginIp: json['login_ip'] as String,
      loginTime: json['login_time'] as String,
      md5Password: json['MD5password'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
      staff: json['staff'],
      status: json['status'] as int,
      type: json['type'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'account': instance.account,
      'avatar': instance.avatar,
      'company_id': instance.companyId,
      'company_list': instance.companyList,
      'created_at': instance.createdAt,
      'created_id': instance.createdId,
      'deleted_at': instance.deletedAt,
      'device_id': instance.deviceId,
      'id': instance.id,
      'login_failed': instance.loginFailed,
      'login_ip': instance.loginIp,
      'login_time': instance.loginTime,
      'MD5password': instance.md5Password,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
      'staff': instance.staff,
      'status': instance.status,
      'type': instance.type,
      'updated_at': instance.updatedAt,
    };

CompanyList _$CompanyListFromJson(Map<String, dynamic> json) => CompanyList(
      address: json['address'] as String,
      city: json['city'] as String,
      county: json['county'] as String,
      createdAt: json['created_at'] as String,
      createdId: json['created_id'] as int,
      deletedAt: json['deleted_at'] as String,
      id: json['id'] as int,
      isMain: json['is_main'] as int,
      name: json['name'] as String,
      province: json['province'] as String,
      shortName: json['short_name'] as String,
      staffId: json['staff_id'] as int,
      status: json['status'] as int,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$CompanyListToJson(CompanyList instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'county': instance.county,
      'created_at': instance.createdAt,
      'created_id': instance.createdId,
      'deleted_at': instance.deletedAt,
      'id': instance.id,
      'is_main': instance.isMain,
      'name': instance.name,
      'province': instance.province,
      'short_name': instance.shortName,
      'staff_id': instance.staffId,
      'status': instance.status,
      'updated_at': instance.updatedAt,
    };
