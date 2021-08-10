
import 'package:diseno/widgets/background.dart';
import 'package:diseno/widgets/card_table.dart';
import 'package:diseno/widgets/customBottomNavigation.dart';
import 'package:diseno/widgets/page_title.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        
        //Background
        Background(),
        _HomeBody()

      ],),
      bottomNavigationBar: CustomBottomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        PageTitle(),
        CardTable()
      ],),
    );
  }
}