import 'package:bintang_motionintern_week_3_assignment/widget/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpacesPage extends StatelessWidget {
  const SpacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shape: const Border(bottom: BorderSide(color: Colors.white12)),
        title: Text(
          'Spaces',
          style: GoogleFonts.inter(fontWeight: FontWeight.w500),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: CircleAvatar(),
              ),
            );
          },
        ),
      ),
      drawer: const SideBar(),
      body: const Center(
        child: Text(
          'Spaces Page',
        ),
      ),
    );
  }
}
