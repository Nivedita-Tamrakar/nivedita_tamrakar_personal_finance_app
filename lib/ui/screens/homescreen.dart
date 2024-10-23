import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

        body: TabBarView(
            children: 
                    [
                        Center(child: Text('Airplane Mode Active')),
                        Center(child: Text('Airplane Mode Inactive')),
                     ]
           ),
          backgroundColor:const Color.fromARGB(255, 155, 148, 202),
      ),
    );
  }
}
