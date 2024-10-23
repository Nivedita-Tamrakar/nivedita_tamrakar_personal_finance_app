// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Userdetails _$UserdetailsFromJson(Map<String, dynamic> json) => Userdetails()
  ..userId = (json['userId'] as num?)?.toInt()
  ..userName = json['userName'] as String?
  ..userEmail = json['userEmail'] as String?
  ..userPassword = json['userPassword'] as String?
  ..userTransactions = json['userTransactions'] as String?
  ..userCurrency = json['userCurrency'] as String?
  ..monthlyLimit = (json['monthlyLimit'] as num?)?.toDouble()
  ..userBalance = (json['userBalance'] as num?)?.toDouble()
  ..userIncome = (json['userIncome'] as num?)?.toDouble()
  ..userExpense = (json['userExpense'] as num?)?.toDouble();

Map<String, dynamic> _$UserdetailsToJson(Userdetails instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userEmail': instance.userEmail,
      'userPassword': instance.userPassword,
      'userTransactions': instance.userTransactions,
      'userCurrency': instance.userCurrency,
      'monthlyLimit': instance.monthlyLimit,
      'userBalance': instance.userBalance,
      'userIncome': instance.userIncome,
      'userExpense': instance.userExpense,
    };
