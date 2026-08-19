import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Import file yang baru saja kita buat
import 'widgets/custom_widgets.dart';
import 'sections/portfolio_sections.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portofolio Saya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F13),
        primaryColor: const Color(0xFF6B4EE6),
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F13),
        elevation: 0,
        title: Text(
          'MuklisDev.',
          style: TextStyle(
            color: const Color(0xFF6B4EE6),
            fontWeight: FontWeight.bold,
            fontSize: isDesktop ? 24 : 20,
          ),
        ),
        actions: isDesktop
            ? const [
                NavBubbleItem(title: 'Home'),
                NavBubbleItem(title: 'About'),
                NavBubbleItem(title: 'Front-End'),
                NavBubbleItem(title: 'UI/UX'),
                SizedBox(width: 20),
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () {},
                ),
              ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 100 : 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              HeroSection(),
              SizedBox(height: 100),
              FrontEndSection(),
              SizedBox(height: 80),
              UiUxSection(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
