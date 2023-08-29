import 'package:flutter/material.dart';
import 'package:training/components/cards/author_card.dart';
import 'package:training/components/cards/main_card.dart';
import 'package:training/theme/main_theme.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  Fooderlich({super.key});

  final theme = AppTheme.darkTheme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fooderlich",
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Main(
        title: "My Food",
      ),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key, required this.title});
  final String title;

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: element[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onBtnTap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favoris"),
            BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Food")
          ]),
    );
  }

  void onBtnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> element = [
    const MainCard(),
    const AuthorCard(),
    Container(
      color: Colors.red,
    )
  ];
}
