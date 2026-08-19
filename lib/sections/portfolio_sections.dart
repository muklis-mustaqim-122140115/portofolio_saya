import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_widgets.dart';

// --- SECTION: HERO (INTRODUCTION) ---
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    if (isDesktop) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: HeroText()),
          const SizedBox(width: 50),
          _buildAvatar(),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildAvatar(isMobile: true),
          const SizedBox(height: 30),
          const HeroText(),
        ],
      );
    }
  }

  Widget _buildAvatar({bool isMobile = false}) {
    return Container(
      width: isMobile ? double.infinity : 300,
      height: isMobile ? 300 : 350,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A24),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF6B4EE6).withOpacity(0.5),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B4EE6).withOpacity(0.2),
            blurRadius: 50,
            spreadRadius: 10,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          'Foto Profil / Avatar',
          style: TextStyle(color: Colors.white54),
        ),
      ),
    );
  }
}

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Halo, perkenalkan',
          style: TextStyle(
            color: Color(0xFF6B4EE6),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Saya Mahasiswa Akhir\nTeknik Informatika',
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.width > 800 ? 42 : 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'Fokus mengintegrasikan logika algoritma yang solid di Front-End dengan desain antarmuka pengguna (UI/UX) yang intuitif dan berpusat pada pengguna.',
          style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6B4EE6),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Download CV',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

// --- SECTION: FRONT-END PROJECTS ---
class FrontEndSection extends StatelessWidget {
  const FrontEndSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Front-End & Development',
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Container(height: 4, width: 60, color: const Color(0xFF6B4EE6)),
        const SizedBox(height: 30),
        const Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            ProjectCard(
              title: 'Aplikasi Posyandu Mawar II',
              category: 'Mobile Dev / Front-End',
              description:
                  'Digitalisasi pencatatan kesehatan dan tumbuh kembang menggunakan metode RAD.',
            ),
            ProjectCard(
              title: 'Monstera Detection YOLO',
              category: 'Machine Learning / Image Processing',
              description:
                  'Implementasi pengolahan citra digital untuk deteksi objek spesifik.',
            ),
          ],
        ),
      ],
    );
  }
}

// --- SECTION: UI/UX PROJECTS ---
class UiUxSection extends StatelessWidget {
  const UiUxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'UI/UX Design',
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Container(height: 4, width: 60, color: const Color(0xFF6B4EE6)),
        const SizedBox(height: 30),
        const Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            ProjectCard(
              title: 'SIVARO - Health ML Interface',
              category: 'UI/UX Figma',
              description:
                  'Desain antarmuka untuk aplikasi prediksi biaya asuransi medis berbasis interaksi pengguna yang intuitif.',
            ),
          ],
        ),
      ],
    );
  }
}
