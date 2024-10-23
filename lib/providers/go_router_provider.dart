import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/moneyTransfer.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/transactionHistory.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/transectionDetails.dart';

import '../constants/route_names.dart';
import '../ui/screens/homescreen.dart';

final goRouterProvider = Provider((ref) {
  return GoRouter(
      initialLocation:RouteNames.homesceeen.path(),
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state){
          return Homescreen();
        }),

        GoRoute(
        path: RouteNames.homesceeen.path(),
        name: RouteNames.homesceeen,
        builder: (context, state){
          return const Homescreen();
        }),

        GoRoute(
        path:  RouteNames.moneyTransefer.path(),
        name:  RouteNames.moneyTransefer,
        builder: (context, state){
          return const Moneytransfer();
        }),

        GoRoute(
        path:  RouteNames.transectionDetail.path(),
        name:  RouteNames.transectionDetail,
        builder: (context, state){
          return const Transectiondetails();
        }),

         GoRoute(
        path: RouteNames.transectionHistory.path(),
        name:  RouteNames.transectionHistory,
        builder: (context, state){
          return const Transactionhistory();
        }),
    ],
    );
});