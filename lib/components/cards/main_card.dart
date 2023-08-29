import 'package:flutter/material.dart';
import 'package:training/theme/main_theme.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  final String category = "Choix du chef";
  final String title = "L'art de préparer la pâte";
  final String description =
      "Apprendre comment préparer sans grains et qui ne bouillone pas. ";
  final String chef = "Georges AYENI";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(height: 450, width: 350),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
              image: AssetImage('assets/mag1.png'), fit: BoxFit.cover)),
      child: Stack(children: [
        Text(
          category,
          style: AppTheme.darkTxt.bodyLarge,
        ),
        Positioned(
            top: 20,
            child: Text(
              title,
              style: AppTheme.darkTxt.labelMedium,
            )),
        Positioned(
          bottom: 30,
          right: 0,
          child: Text(
            description,
            style: AppTheme.darkTxt.bodyMedium,
          ),
        ),
        Positioned(
            bottom: 10,
            right: 0,
            child: Text(
              chef,
              style: AppTheme.darkTxt.headlineMedium,
            ))
      ]),
    );
  }
}
