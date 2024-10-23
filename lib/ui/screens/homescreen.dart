import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nivedita_tamrakar_personal_finance_app/constants/route_names.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/transactionHistory.dart';
import 'package:nivedita_tamrakar_personal_finance_app/ui/screens/transectionDetails.dart';

import '../../providers/go_router_provider.dart';

class Homescreen extends ConsumerStatefulWidget {
  const Homescreen({super.key});

  @override
  ConsumerState<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends ConsumerState<Homescreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Personal Expenses"),
          backgroundColor: const Color.fromARGB(255, 155, 148, 202),
          bottom: const TabBar(labelPadding: EdgeInsets.all(15), tabs: [
            Text("All Expenses"),
            Text("Monthly Balance"),
          ]),
        ),
        //Tried to add the Sliver APP bar

        // body: CustomScrollView(
        //   controller: scrollController,
        //   slivers: [
        //     SliverAppBar(
        //       // title: const Text('Profile Screen'),
        //       pinned: true,
        //       expandedHeight: 150,
        //       flexibleSpace: FlexibleSpaceBar(
        //         title: const Text(
        //           'Personal Expenses',
        //           style:
        //               TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        //         ),
        //         background: Image.network(
        //             width: double.infinity,
        //             fit: BoxFit.cover,
        //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQaaofIjY9g73wuhTL5mc7awXxEVdxMmMCcQ&s'),
        //       ),
        //     ),
        //   ],
        // ),

        body: TabBarView(children: [
          //One way to navigate 
          Navigator(
            onGenerateRoute: (RouteSettings settings) {
              return MaterialPageRoute(
                builder: (context) => const Transactionhistory(),
              );
            },
          ),

          // Navigator(
          //   onGenerateRoute: (RouteSettings settings) {
          //     return MaterialPageRoute(
          //       builder: (context) => const Transectiondetails(),
          //     );
          //   },
          // ),

          //Another Way to navigate
              GestureDetector(
              onTap: () {
                context.go(RouteNames.transectionHistory.path());
              },
              child: Center(child: Text('Your Monthly Balance')),
            ),
        ]),
        backgroundColor: const Color.fromARGB(255, 155, 148, 202),
        
      ),
    );
  }
}
