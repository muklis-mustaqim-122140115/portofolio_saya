import 'package:flutter/material.dart';

// --- WIDGET: NAV BUBBLE ANIMATION ---
class NavBubbleItem extends StatefulWidget {
  final String title;
  const NavBubbleItem({super.key, required this.title});

  @override
  State<NavBubbleItem> createState() => _NavBubbleItemState();
}

class _NavBubbleItemState extends State<NavBubbleItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isHovered
              ? const Color(0xFF6B4EE6).withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isHovered ? const Color(0xFF6B4EE6) : Colors.transparent,
            width: 1,
          ),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: isHovered ? const Color(0xFF6B4EE6) : Colors.white70,
            fontWeight: isHovered ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

// --- WIDGET: PROJECT CARD ---
class ProjectCard extends StatelessWidget {
  final String title;
  final String category;
  final String description;

  const ProjectCard({
    super.key,
    required this.title,
    required this.category,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 800;

    return Container(
      width: isDesktop ? 350 : double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A24),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: const TextStyle(
              color: Color(0xFF6B4EE6),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
