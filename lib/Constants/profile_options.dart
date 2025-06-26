import 'package:flutter/material.dart';

class profileOptions {
  final IconData icon;
  final String title;
  profileOptions({required this.icon, required this.title});
}

List<profileOptions> profileOptionsList = [
  profileOptions(icon: Icons.star_border, title: "Rate App"),
  profileOptions(icon: Icons.share, title: "Share App"),
  profileOptions(icon: Icons.shield_outlined, title: "Privacy Policy"),
  profileOptions(icon: Icons.logout, title: "Sign Out"),
];
