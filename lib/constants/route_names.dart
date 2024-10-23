class RouteNames {
  static const String homesceeen = 'homescreen';
  static const String moneyTransefer= 'moneyTransefer';
  static const String transectionHistory = 'transectionHistory';
  static const String transectionDetail = 'transectionDetail';
}
extension GoRouterPath on String {
  
  String path() => '/$this';
}