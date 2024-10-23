import 'package:json_annotation/json_annotation.dart';
part 'userdetails.g.dart';
@JsonSerializable()
class Userdetails {
  int? userId;
  String? userName;
  String? userEmail;
  String? userPassword;
  String? userTransactions;

  String? userCurrency;
  double? monthlyLimit;
  double? userBalance;
  double? userIncome;
  double? userExpense;

  Userdetails() {
    this.userId;
    this.userName;
    this.userEmail;
    this.userPassword;
    this.userTransactions;
    this.userCurrency;
    this.monthlyLimit;
    this.userBalance;
    this.userIncome;
    this.userExpense;
  }
  factory Userdetails.fromJson(Map<String,dynamic> json) => _$UserdetailsFromJson(json);
}
