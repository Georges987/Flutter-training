import 'package:flutter/material.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
