import 'package:designs/widgets/background.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_navigatorbar.dart';
import '../widgets/card_table.dart';
import '../widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Background(),
          //Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: BottomNavigatorBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titles
          PageTitle(),
          // Card Table
          CardTable(),
        ],
      ),
    );
  }
}
