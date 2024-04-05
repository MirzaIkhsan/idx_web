import 'package:flutter/material.dart';
import 'package:idx_web/pages/1_first_page.dart';
import 'package:idx_web/pages/2_second_page.dart';
import 'package:idx_web/pages/4_fourth_page.dart';
import 'package:idx_web/widgets/footer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: FirstPage()),
          SliverToBoxAdapter(child: SecondPage()),
          // Limited time, skip the third page since the design is the same
          SliverToBoxAdapter(child: FourthPage()),
          SliverToBoxAdapter(child: Footer()),
        ],
      ),
    );
  }
}
